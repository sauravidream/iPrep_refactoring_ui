// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Course {
  UniqueId get id => throw _privateConstructorUsedError;
  CourseName get name => throw _privateConstructorUsedError;
  CourseColor get color => throw _privateConstructorUsedError;
  CourseImage get courseImage => throw _privateConstructorUsedError;
  CourseTime get courseTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {UniqueId id,
      CourseName name,
      CourseColor color,
      CourseImage courseImage,
      CourseTime courseTime});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? courseImage = null,
    Object? courseTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CourseName,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CourseColor,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as CourseImage,
      courseTime: null == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as CourseTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      CourseName name,
      CourseColor color,
      CourseImage courseImage,
      CourseTime courseTime});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? courseImage = null,
    Object? courseTime = null,
  }) {
    return _then(_$_Course(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CourseName,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CourseColor,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as CourseImage,
      courseTime: null == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as CourseTime,
    ));
  }
}

/// @nodoc

class _$_Course extends _Course {
  const _$_Course(
      {required this.id,
      required this.name,
      required this.color,
      required this.courseImage,
      required this.courseTime})
      : super._();

  @override
  final UniqueId id;
  @override
  final CourseName name;
  @override
  final CourseColor color;
  @override
  final CourseImage courseImage;
  @override
  final CourseTime courseTime;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, color: $color, courseImage: $courseImage, courseTime: $courseTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.courseTime, courseTime) ||
                other.courseTime == courseTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, color, courseImage, courseTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);
}

abstract class _Course extends Course {
  const factory _Course(
      {required final UniqueId id,
      required final CourseName name,
      required final CourseColor color,
      required final CourseImage courseImage,
      required final CourseTime courseTime}) = _$_Course;
  const _Course._() : super._();

  @override
  UniqueId get id;
  @override
  CourseName get name;
  @override
  CourseColor get color;
  @override
  CourseImage get courseImage;
  @override
  CourseTime get courseTime;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}
