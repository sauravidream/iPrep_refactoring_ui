// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseDto _$$_CourseDtoFromJson(Map<String, dynamic> json) => _$_CourseDto(
      name: json['name'] as String,
      color: json['color'] as int,
      courseImage: json['courseImage'] as String,
      courseTime: json['courseTime'] as int,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_CourseDtoToJson(_$_CourseDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'courseImage': instance.courseImage,
      'courseTime': instance.courseTime,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
