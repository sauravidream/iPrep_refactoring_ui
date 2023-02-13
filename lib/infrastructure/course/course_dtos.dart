import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:library_package/domain/course/course.dart';
import 'package:library_package/domain/course/value_objects.dart';

import '../../domain/core/value_object.dart';
part 'course_dtos.freezed.dart';
part 'course_dtos.g.dart';

@freezed
abstract class CourseDto with _$CourseDto {
  const CourseDto._();
  const factory CourseDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required int color,
    required String courseImage,
    required int courseTime,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _CourseDto;

  factory CourseDto.fromDomain(Course course) {
    return CourseDto(
      name: course.name.getOrCrash(),
      courseTime: int.parse(course.courseTime.getOrCrash()),
      color: course.color.getOrCrash().value,
      serverTimeStamp: FieldValue.serverTimestamp(),
      id: course.id.getOrCrash(),
      courseImage: course.courseImage.getOrCrash(),
    );
  }

  Course toDomain() {
    return Course(
      id: UniqueId.fromUniqueString(id),
      courseImage: CourseImage(courseImage),
      courseTime: CourseTime(courseTime),
      name: CourseName(name),
      color: CourseColor(Color(color)),
    );
  }

  factory CourseDto.fromFirestore(DocumentSnapshot doc) {
    return CourseDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(
      id: doc.id,
    );
  }

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
