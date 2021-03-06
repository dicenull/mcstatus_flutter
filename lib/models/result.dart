import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  factory Result.success(T data) = Success<T>;
  factory Result.waiting() = Waiting;
  factory Result.failure(Error e) = Failure<T>;
}
