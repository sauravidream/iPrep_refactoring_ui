// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:library_package/domain/core/failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);
  final ValueFailure valueFailure;

  @override
  String toString() => 'UnexpectedValueError(valueFailure: $valueFailure)';
}
