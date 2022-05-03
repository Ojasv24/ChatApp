import 'package:chatapp_dda/Application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:chatapp_dda/Domain/Auth/auth_failure.dart';
import 'package:chatapp_dda/Domain/Auth/i_auth_facade.dart';
import 'package:chatapp_dda/Domain/Auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInFormBloc extends Cubit<SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(
    this._authFacade,
  ) : super(SignInFormState.initial());

  void cancel() {
    emit(state.copyWith(showNameField: false, showPasswordField: false));
  }

  void emailChanged(String emailStr) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(emailStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> signInPressed() async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (!state.emailAddress.isValid()) {
      emit(state.copyWith(
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    }
    if (!state.showPasswordField) {
      final isEmailAlreadyExists =
          await _authFacade.verifyEmail(emailAddress: state.emailAddress);
      if (isEmailAlreadyExists) {
        emit(
          state.copyWith(showPasswordField: true),
        );
      } else {
        emit(
          state.copyWith(showNameField: true, showPasswordField: true),
        );
      }
    } else if (state.showNameField && state.showPasswordField) {
      registerWithEmailAndPasswordPressed();
    } else if (state.showPasswordField) {
      signInWithEmailAndPasswordPressed();
    }
  }

  void passwordChanged(String passwordStr) {
    emit(
      state.copyWith(
        password: Password(passwordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void nameChanged(String nameStr) {
    emit(
      state.copyWith(
        name: Name(nameStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void registerWithEmailAndPasswordPressed() {
    _performActionOnAuthFacadeWithEmailAndPasswordResister(
        (_authFacade.registerWithEmailAndPassword));
  }

  void signInWithEmailAndPasswordPressed() {
    _performActionOnAuthFacadeWithEmailAndPasswordSignIn(
        (_authFacade.signInWithEmailAndPassword));
  }

  Future<void> signInWithGooglePressed() async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccessOption = await _authFacade.signInWithGoogle();

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccessOption),
      ),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPasswordSignIn(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPasswordResister(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
      required Name name,
    })
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isNameValid = state.name.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid && isNameValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
        name: state.name,
      );
    }
    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
