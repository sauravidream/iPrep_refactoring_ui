import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure {
  factory ValueFailure.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;
  factory ValueFailure.shortPassword({required String failedValue}) =
      ShortPassword<T>;
  factory ValueFailure.invalidPhoneNumber({required String failedValue}) =
      InvalidPhoneNumbero<T>;
  factory ValueFailure.invalidPhoneOTP({required String failedValue}) =
      InvalidPhoneOTP<T>;
  const factory ValueFailure.exceedingLength(
      {required T failedValue, required int max}) = ExceedingLength<T>;

  const factory ValueFailure.invalidUrl({required String failedValue}) =
      InvalidUrl<T>;
  const factory ValueFailure.invalidTime({required String failedValue}) =
      InvalidTime<T>;
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.multiLine({required T failedValue}) = MultiLine<T>;
  const factory ValueFailure.listTooLong(
      {required T failedValue, required int max}) = ListTooLong<T>;
}
