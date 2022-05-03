import 'package:chatapp_dda/Domain/Auth/i_auth_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Cubit<AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial());

  Future<void> authCheckRequested() async {
    final userOption = await _authFacade.getMyProfile();
    
    emit(
      userOption.fold(
        () => const AuthState.unauthenticated(),
        (user) => AuthState.authenticated(user),
      ),
    );
  }

  Future<void> signedOut() async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
