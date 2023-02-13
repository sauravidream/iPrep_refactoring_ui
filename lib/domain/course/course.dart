import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_package/domain/course/value_objects.dart';
import '../core/failure.dart';
import '../core/value_object.dart';

part 'course.freezed.dart';

@freezed
abstract class Course with _$Course {
  const Course._();
  const factory Course({
    required UniqueId id,
    required CourseName name,
    required CourseColor color,
    required CourseImage courseImage,
    required CourseTime courseTime,
  }) = _Course;

  factory Course.empty() => Course(
        color: CourseColor(CourseColor.predefinedColors.first),
        name: CourseName("Flutter"),
        courseTime: CourseTime(10000),
        courseImage: CourseImage(""),
        id: UniqueId(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(color.failureOrUnit)
        .andThen(courseImage.failureOrUnit)
        .andThen(courseTime.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
