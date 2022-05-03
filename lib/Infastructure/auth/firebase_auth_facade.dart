import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:chatapp_dda/Domain/Auth/auth_failure.dart';
import 'package:chatapp_dda/Domain/Auth/i_auth_facade.dart';
import 'package:chatapp_dda/Domain/Auth/value_objects.dart';
import 'package:chatapp_dda/Domain/Core/value_objects.dart';
import 'package:chatapp_dda/Domain/user/i_user_repository.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:chatapp_dda/Infastructure/app/chat_dtos.dart';
import 'package:chatapp_dda/Infastructure/core/firestore_helper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IUserRepository _iUserRepository;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._iUserRepository,
  );
  @override
  Future<Option<UserProfile>> getMyProfile() async {
    final me = FirebaseAuth.instance.currentUser;
    if (me == null) {
      return none();
    }
    final user = await FirebaseFirestore.instance
        .userCollection()
        .doc(me.uid)
        .get(const GetOptions(
          source: Source.cache,
        ));
    return optionOf(UserProfileDto.fromFirestore(user).toDomain(user.id));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required Name name}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nameStr = name.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final currentUserID = FirebaseAuth.instance.currentUser!.uid;
      await _iUserRepository.setUser(UserProfile(
        id: UniqueId.fromUniqueString(currentUserID),
        realName: nameStr,
        name: nameStr.toLowerCase(),
        emailId: emailAddressStr,
        isMe: true,
        backGroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)].value,
        profilePhoto: 'https://avatars.dicebear.com/api/avataaars/$nameStr.svg',
      ));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      final currentUserID = FirebaseAuth.instance.currentUser!.uid;

      final currentUserName = FirebaseAuth.instance.currentUser!.displayName;
      final currentUserEmail = FirebaseAuth.instance.currentUser!.email;
      if (await verifyGoogleAccount(currentUserID)) {
        return right(unit);
      }
      await _iUserRepository.setUser(UserProfile(
          id: UniqueId.fromUniqueString(currentUserID),
          name: currentUserName.toString().toLowerCase(),
          realName: currentUserName.toString(),
          emailId: currentUserEmail.toString(),
          isMe: true,
          profilePhoto:
              'https://avatars.dicebear.com/api/avataaars/$currentUserName.svg',
          backGroundColor: Colors
              .primaries[Random().nextInt(Colors.primaries.length)].value));
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<bool> verifyEmail({required EmailAddress emailAddress}) async {
    final emailAddressStr = emailAddress.getOrCrash();

    var methods =
        await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddressStr);

    if (methods.contains('password')) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> verifyGoogleAccount(String userId) async {
    final user = await _iUserRepository.getUser(userId);
    print(user);
    return user.fold((l) => false, (r) => true);
  }
}
