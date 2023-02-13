import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.invalidPhoneOTP() = InvalidPhoneOTP;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadayInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
