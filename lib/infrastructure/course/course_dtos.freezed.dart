// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) {
  return _CourseDto.fromJson(json);
}

/// @nodoc
mixin _$CourseDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get courseImage => throw _privateConstructorUsedError;
  int get courseTime => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDtoCopyWith<CourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDtoCopyWith<$Res> {
  factory $CourseDtoCopyWith(CourseDto value, $Res Function(CourseDto) then) =
      _$CourseDtoCopyWithImpl<$Res, CourseDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      int color,
      String courseImage,
      int courseTime,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$CourseDtoCopyWithImpl<$Res, $Val extends CourseDto>
    implements $CourseDtoCopyWith<$Res> {
  _$CourseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? color = null,
    Object? courseImage = null,
    Object? courseTime = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String,
      courseTime: null == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseDtoCopyWith<$Res> implements $CourseDtoCopyWith<$Res> {
  factory _$$_CourseDtoCopyWith(
          _$_CourseDto value, $Res Function(_$_CourseDto) then) =
      __$$_CourseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      int color,
      String courseImage,
      int courseTime,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_CourseDtoCopyWithImpl<$Res>
    extends _$CourseDtoCopyWithImpl<$Res, _$_CourseDto>
    implements _$$_CourseDtoCopyWith<$Res> {
  __$$_CourseDtoCopyWithImpl(
      _$_CourseDto _value, $Res Function(_$_CourseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? color = null,
    Object? courseImage = null,
    Object? courseTime = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$_CourseDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String,
      courseTime: null == courseTime
          ? _value.courseTime
          : courseTime // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseDto extends _CourseDto {
  const _$_CourseDto(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.color,
      required this.courseImage,
      required this.courseTime,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_CourseDto.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final int color;
  @override
  final String courseImage;
  @override
  final int courseTime;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'CourseDto(id: $id, name: $name, color: $color, courseImage: $courseImage, courseTime: $courseTime, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.courseTime, courseTime) ||
                other.courseTime == courseTime) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, color, courseImage, courseTime, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseDtoCopyWith<_$_CourseDto> get copyWith =>
      __$$_CourseDtoCopyWithImpl<_$_CourseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDtoToJson(
      this,
    );
  }
}

abstract class _CourseDto extends CourseDto {
  const factory _CourseDto(
      {@JsonKey(ignore: true)
          final String? id,
      required final String name,
      required final int color,
      required final String courseImage,
      required final int courseTime,
      @ServerTimestampConverter()
          required final FieldValue serverTimeStamp}) = _$_CourseDto;
  const _CourseDto._() : super._();

  factory _CourseDto.fromJson(Map<String, dynamic> json) =
      _$_CourseDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  int get color;
  @override
  String get courseImage;
  @override
  int get courseTime;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_CourseDtoCopyWith<_$_CourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
