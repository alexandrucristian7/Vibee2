// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vibe_dna.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VibeDNAImpl _$$VibeDNAImplFromJson(Map<String, dynamic> json) =>
    _$VibeDNAImpl(
      currentObjective: json['currentObjective'] as String,
      interestTags: (json['interestTags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      drinkPreference: json['drinkPreference'] as String,
      baselineEnergy: (json['baselineEnergy'] as num?)?.toInt() ?? 3,
      socialBattery: (json['socialBattery'] as num?)?.toInt() ?? 100,
    );

Map<String, dynamic> _$$VibeDNAImplToJson(_$VibeDNAImpl instance) =>
    <String, dynamic>{
      'currentObjective': instance.currentObjective,
      'interestTags': instance.interestTags,
      'drinkPreference': instance.drinkPreference,
      'baselineEnergy': instance.baselineEnergy,
      'socialBattery': instance.socialBattery,
    };
