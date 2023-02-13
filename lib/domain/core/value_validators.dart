import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:library_package/domain/core/failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneRegex = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateOTP(String input) {
  if (input.length == 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneOTP(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
    // return left(ValueFailure.notes(NoteValueFailure.exceedingLength(failedValue: input, max: maxLength)));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
    // return left(ValueFailure.notes(NoteValueFailure.empty(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains("\n")) {
    return right(input);
  } else {
    return left(ValueFailure.multiLine(failedValue: input));
    // return left(ValueFailure.notes(NoteValueFailure.multiLine(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateUrl(String input) {
  bool isURLValid = Uri.parse(input).host.isNotEmpty;
  if (isURLValid == true) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: input));
    // return left(ValueFailure.notes(NoteValueFailure.multiLine(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateTime(int input) {
  if (input >= 1000) {
    int hours = (input / (1000 * 60 * 60)).truncate();
    int minutes = ((input % (1000 * 60 * 60)) / (1000 * 60)).truncate();
    return right("$hours hrs $minutes mins");
  } else {
    return left(ValueFailure.invalidTime(failedValue: input.toString()));
    // return left(ValueFailure.notes(NoteValueFailure.multiLine(failedValue: input)));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));

    // return left(ValueFailure.notes(
    //     NoteValueFailure.listTooLong(failedValue: input, max: maxLength)));
  }
}
