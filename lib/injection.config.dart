// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'Application/app/chat_bloc/chat_bloc.dart' as _i18;
import 'Application/app/chat_watcher_bloc/chat_watcher_bloc.dart' as _i20;
import 'Application/app/group_chat_bloc/group_chat_bloc.dart' as _i21;
import 'Application/app/input_bloc/input_bloc.dart' as _i8;
import 'Application/app/message_watcher_bloc/message_watcher_bloc.dart' as _i14;
import 'Application/app/user_watcher_bloc/user_watcher_bloc.dart' as _i9;
import 'Application/auth/auth_bloc.dart' as _i17;
import 'Application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'Domain/app/chat.dart' as _i15;
import 'Domain/app/i_chat_repository.dart' as _i12;
import 'Domain/Auth/i_auth_facade.dart' as _i10;
import 'Domain/user/i_user_repository.dart' as _i6;
import 'Domain/user/user_profile.dart' as _i19;
import 'Infastructure/app/chat_repository.dart' as _i13;
import 'Infastructure/auth/firebase_auth_facade.dart' as _i11;
import 'Infastructure/core/firebase_injectable.dart' as _i22;
import 'Infastructure/user/user_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IUserRepository>(
      () => _i7.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i8.InputBloc>(() => _i8.InputBloc());
  gh.factory<_i9.UserWatcherBloc>(
      () => _i9.UserWatcherBloc(get<_i6.IUserRepository>()));
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i6.IUserRepository>()));
  gh.lazySingleton<_i12.IChatRepository>(() => _i13.ChatRepository(
      get<_i4.FirebaseFirestore>(), get<_i6.IUserRepository>()));
  gh.factory<_i14.MessageWatcherBloc>(() =>
      _i14.MessageWatcherBloc(get<_i12.IChatRepository>(), get<_i15.Chat>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i18.ChatBloc>(() => _i18.ChatBloc(
      chatRepository: get<_i12.IChatRepository>(),
      chat: get<_i15.Chat>(),
      userProfile: get<_i19.UserProfile>()));
  gh.factory<_i20.ChatWatcherBloc>(
      () => _i20.ChatWatcherBloc(get<_i12.IChatRepository>()));
  gh.factory<_i21.GroupChatBloc>(() => _i21.GroupChatBloc(
      get<_i6.IUserRepository>(), get<_i12.IChatRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
