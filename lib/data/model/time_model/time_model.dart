import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart';

part 'time_model.g.dart';

@freezed
class TimeModel with _$TimeModel {
  factory TimeModel({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
  }) = _TimeModel;

  factory TimeModel.fromJson(Map<String, Object?> json) =>
      _$TimeModelFromJson(json);
}
