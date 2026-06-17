// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vibe_dna.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VibeDNA _$VibeDNAFromJson(Map<String, dynamic> json) {
  return _VibeDNA.fromJson(json);
}

/// @nodoc
mixin _$VibeDNA {
  String get currentObjective => throw _privateConstructorUsedError;
  List<String> get interestTags => throw _privateConstructorUsedError;
  String get drinkPreference => throw _privateConstructorUsedError;
  int get baselineEnergy => throw _privateConstructorUsedError;
  int get socialBattery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VibeDNACopyWith<VibeDNA> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VibeDNACopyWith<$Res> {
  factory $VibeDNACopyWith(VibeDNA value, $Res Function(VibeDNA) then) =
      _$VibeDNACopyWithImpl<$Res, VibeDNA>;
  @useResult
  $Res call(
      {String currentObjective,
      List<String> interestTags,
      String drinkPreference,
      int baselineEnergy,
      int socialBattery});
}

/// @nodoc
class _$VibeDNACopyWithImpl<$Res, $Val extends VibeDNA>
    implements $VibeDNACopyWith<$Res> {
  _$VibeDNACopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentObjective = null,
    Object? interestTags = null,
    Object? drinkPreference = null,
    Object? baselineEnergy = null,
    Object? socialBattery = null,
  }) {
    return _then(_value.copyWith(
      currentObjective: null == currentObjective
          ? _value.currentObjective
          : currentObjective // ignore: cast_nullable_to_non_nullable
              as String,
      interestTags: null == interestTags
          ? _value.interestTags
          : interestTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      drinkPreference: null == drinkPreference
          ? _value.drinkPreference
          : drinkPreference // ignore: cast_nullable_to_non_nullable
              as String,
      baselineEnergy: null == baselineEnergy
          ? _value.baselineEnergy
          : baselineEnergy // ignore: cast_nullable_to_non_nullable
              as int,
      socialBattery: null == socialBattery
          ? _value.socialBattery
          : socialBattery // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VibeDNAImplCopyWith<$Res> implements $VibeDNACopyWith<$Res> {
  factory _$$VibeDNAImplCopyWith(
          _$VibeDNAImpl value, $Res Function(_$VibeDNAImpl) then) =
      __$$VibeDNAImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentObjective,
      List<String> interestTags,
      String drinkPreference,
      int baselineEnergy,
      int socialBattery});
}

/// @nodoc
class __$$VibeDNAImplCopyWithImpl<$Res>
    extends _$VibeDNACopyWithImpl<$Res, _$VibeDNAImpl>
    implements _$$VibeDNAImplCopyWith<$Res> {
  __$$VibeDNAImplCopyWithImpl(
      _$VibeDNAImpl _value, $Res Function(_$VibeDNAImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentObjective = null,
    Object? interestTags = null,
    Object? drinkPreference = null,
    Object? baselineEnergy = null,
    Object? socialBattery = null,
  }) {
    return _then(_$VibeDNAImpl(
      currentObjective: null == currentObjective
          ? _value.currentObjective
          : currentObjective // ignore: cast_nullable_to_non_nullable
              as String,
      interestTags: null == interestTags
          ? _value._interestTags
          : interestTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      drinkPreference: null == drinkPreference
          ? _value.drinkPreference
          : drinkPreference // ignore: cast_nullable_to_non_nullable
              as String,
      baselineEnergy: null == baselineEnergy
          ? _value.baselineEnergy
          : baselineEnergy // ignore: cast_nullable_to_non_nullable
              as int,
      socialBattery: null == socialBattery
          ? _value.socialBattery
          : socialBattery // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VibeDNAImpl implements _VibeDNA {
  const _$VibeDNAImpl(
      {required this.currentObjective,
      required final List<String> interestTags,
      required this.drinkPreference,
      this.baselineEnergy = 3,
      this.socialBattery = 100})
      : _interestTags = interestTags;

  factory _$VibeDNAImpl.fromJson(Map<String, dynamic> json) =>
      _$$VibeDNAImplFromJson(json);

  @override
  final String currentObjective;
  final List<String> _interestTags;
  @override
  List<String> get interestTags {
    if (_interestTags is EqualUnmodifiableListView) return _interestTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestTags);
  }

  @override
  final String drinkPreference;
  @override
  @JsonKey()
  final int baselineEnergy;
  @override
  @JsonKey()
  final int socialBattery;

  @override
  String toString() {
    return 'VibeDNA(currentObjective: $currentObjective, interestTags: $interestTags, drinkPreference: $drinkPreference, baselineEnergy: $baselineEnergy, socialBattery: $socialBattery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VibeDNAImpl &&
            (identical(other.currentObjective, currentObjective) ||
                other.currentObjective == currentObjective) &&
            const DeepCollectionEquality()
                .equals(other._interestTags, _interestTags) &&
            (identical(other.drinkPreference, drinkPreference) ||
                other.drinkPreference == drinkPreference) &&
            (identical(other.baselineEnergy, baselineEnergy) ||
                other.baselineEnergy == baselineEnergy) &&
            (identical(other.socialBattery, socialBattery) ||
                other.socialBattery == socialBattery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentObjective,
      const DeepCollectionEquality().hash(_interestTags),
      drinkPreference,
      baselineEnergy,
      socialBattery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VibeDNAImplCopyWith<_$VibeDNAImpl> get copyWith =>
      __$$VibeDNAImplCopyWithImpl<_$VibeDNAImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VibeDNAImplToJson(
      this,
    );
  }
}

abstract class _VibeDNA implements VibeDNA {
  const factory _VibeDNA(
      {required final String currentObjective,
      required final List<String> interestTags,
      required final String drinkPreference,
      final int baselineEnergy,
      final int socialBattery}) = _$VibeDNAImpl;

  factory _VibeDNA.fromJson(Map<String, dynamic> json) = _$VibeDNAImpl.fromJson;

  @override
  String get currentObjective;
  @override
  List<String> get interestTags;
  @override
  String get drinkPreference;
  @override
  int get baselineEnergy;
  @override
  int get socialBattery;
  @override
  @JsonKey(ignore: true)
  _$$VibeDNAImplCopyWith<_$VibeDNAImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
