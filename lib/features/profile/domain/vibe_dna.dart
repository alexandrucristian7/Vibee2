import 'package:freezed_annotation/freezed_annotation.dart';

part 'vibe_dna.freezed.dart';
part 'vibe_dna.g.dart';

@freezed
class VibeDNA with _$VibeDNA {
  const factory VibeDNA({
    required String currentObjective,
    required List<String> interestTags,
    required String drinkPreference,
    @Default(3) int baselineEnergy,
    @Default(100) int socialBattery,
  }) = _VibeDNA;

  factory VibeDNA.fromJson(Map<String, dynamic> json) => _$VibeDNAFromJson(json);
}
