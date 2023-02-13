part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged({required String email}) =
      _EmailChanged;

  const factory SignInFormEvent.passwordChanged({required String password}) =
      _PasswordChanged;

  const factory SignInFormEvent.phoneNumberChanged(
      {required String phoneNumber}) = _PhoneNumberChanged;

  const factory SignInFormEvent.otpChanged({required String otp}) = _OtpChanged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;

  const factory SignInFormEvent.signInWithApplePressed() =
      _SignInWithApplePressed;
}
