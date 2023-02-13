import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:library_package/domain/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
}
