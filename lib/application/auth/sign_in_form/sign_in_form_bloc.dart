import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_package/domain/auth/value_object.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<_EmailChanged>((event, emit) => _emailChange(event, emit));
    on<_PasswordChanged>((event, emit) => _passwordChange(event, emit));
    on<_PhoneNumberChanged>((event, emit) => _phoneNumberChange(event, emit));
    on<_OtpChanged>((event, emit) => _otpChange(event, emit));
    on<_SignInWithGooglePressed>(
        (event, emit) => _signInWithGoogle(event, emit));
    on<_SignInWithApplePressed>((event, emit) => _signInWithApple(event, emit));
    on<_RegisterWithEmailAndPasswordPressed>(
        (event, emit) => _registerWithEmailAndPasswordPressed(event, emit));
    on<_SignInWithEmailAndPasswordPressed>(
        (event, emit) => _signInWithEmailAndPasswordPressed(event, emit));
  }

  final IAuthFacade _authFacade;

  _emailChange(_EmailChanged event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.email),
      authFailureOrSuccessOption: none(),
    ));
  }

  _passwordChange(_PasswordChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
          password: Password(event.password),
          authFailureOrSuccessOption: none()),
    );
  }

  _phoneNumberChange(_PhoneNumberChanged event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      phoneNumber: PhoneNumber(event.phoneNumber),
      authFailureOrSuccessOption: none(),
    ));
  }

  _otpChange(_OtpChanged event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      otp: Otp(event.otp),
      authFailureOrSuccessOption: none(),
    ));
  }

  _signInWithGoogle(
      _SignInWithGooglePressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  _signInWithApple(
      _SignInWithApplePressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithApple();

    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  _registerWithEmailAndPasswordPressed(
      _RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.onUserInteraction,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  _signInWithEmailAndPasswordPressed(_SignInWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.onUserInteraction,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  // Not in use try to find new method
  Stream<SignInFormState> performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.onUserInteraction,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
