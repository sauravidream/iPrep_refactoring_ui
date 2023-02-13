import 'dart:ui';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:library_package/domain/core/failure.dart';

import '../core/value_object.dart';
import '../core/value_transformers.dart';
import '../core/value_validators.dart';

class CourseBody extends ValueObject<String> {
  const CourseBody._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 1000;

  factory CourseBody(String? input) {
    return CourseBody._(validateMaxStringLength(input!, maxLength)
        .flatMap(validateStringNotEmpty));
  }
}

class CourseColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const maxLength = 30;
  factory CourseColor(Color input) {
    return CourseColor._(
      right(makeColorOpaque(input)),
    );
  }
  const CourseColor._(this.value);
}

class CourseImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CourseImage(String? input) {
    return CourseImage._(validateUrl(input!));
  }
  const CourseImage._(this.value);
}

class CourseTime extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CourseTime(int? input) {
    return CourseTime._(validateTime(input!)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }
  const CourseTime._(this.value);
}

class CourseName extends ValueObject<String> {
  const CourseName._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  factory CourseName(String? input) {
    return CourseName._(
      validateMaxStringLength(input!, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 3;
  factory List3(KtList<T> input) {
    return List3._(validateMaxListLength(input, maxLength));
  }
  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
