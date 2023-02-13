import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_failure.freezed.dart';

@freezed
abstract class CourseFailure with _$CourseFailure {
  const factory CourseFailure.unexpected() = _Unexpected;
  const factory CourseFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory CourseFailure.unableToUpdate() = _UnableToUpdate;
}
