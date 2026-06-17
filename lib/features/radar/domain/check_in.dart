import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in.freezed.dart';
part 'check_in.g.dart';

@freezed
class CheckIn with _$CheckIn {
  const factory CheckIn({
    required String userId,
    required double latitude,
    required double longitude,
    required DateTime timestamp,
    required String vibeIntent,
    required int socialBattery,
    required String venueId,
  }) = _CheckIn;

  factory CheckIn.fromJson(Map<String, dynamic> json) => _$CheckInFromJson(json);
}
