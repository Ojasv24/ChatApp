import 'package:chatapp_dda/Domain/user/i_user_repository.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:chatapp_dda/Infastructure/app/chat_dtos.dart';
import 'package:chatapp_dda/Infastructure/core/firestore_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:chatapp_dda/Domain/user/user_failures.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository extends IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Future<Either<UserFailure, UserProfile>> getMyProfile() async {
    final user = await FirebaseFirestore.instance
        .userCollection()
        .doc(await _firestore.getMyUserID())
        .get(const GetOptions(
          source: Source.cache,
        ));
    return right(UserProfileDto.fromFirestore(user).toDomain(user.id));
    // return FirebaseFirestore.instance.userCollection().doc(userId).get();
  }

  @override
  Future<Either<UserFailure, UserProfile>> getUser(String userId) async {
    final myProfile =
        await getMyProfile().then((value) => value.fold((l) => null, (r) => r));
    final user = _firestore.getUser(userId);
    try {
      final results = await user.get();
      return right(UserProfileDto.fromFirestore(results)
          .toDomain(myProfile!.id.getOrCrash()));
    } catch (e) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, List<UserProfile>>> searchUser(
      String searchWord) async {
    final myProfile =
        await getMyProfile().then((value) => value.fold((l) => null, (r) => r));
    final userCollection = _firestore.userCollection();
    try {
      final results = await userCollection
          .where('name', isGreaterThanOrEqualTo: searchWord.toLowerCase())
          .limit(10)
          .get();

      return right(results.docs
          .map((doc) => UserProfileDto.fromFirestore(doc)
              .toDomain(myProfile!.id.getOrCrash()))
          .toList());
    } catch (e) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> setUser(UserProfile userProfile) async {
    final userCollection = _firestore.userCollection();
    final userDto = UserProfileDto.fromDomain(userProfile);
    await userCollection.doc(userDto.id).set(userDto.toJson());
    return right(unit);
  }
}
