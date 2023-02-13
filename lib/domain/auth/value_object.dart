import 'package:dartz/dartz.dart';
import 'package:library_package/domain/core/failure.dart';
import 'package:library_package/domain/core/value_validators.dart';

import '../core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }
  const PhoneNumber._(this.value);
}

class Otp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Otp(String input) {
    return Otp._(validateOTP(input));
  }
  const Otp._(this.value);
}
