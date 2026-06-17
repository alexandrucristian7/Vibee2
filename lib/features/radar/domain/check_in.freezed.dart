// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckIn _$CheckInFromJson(Map<String, dynamic> json) {
  return _CheckIn.fromJson(json);
}

/// @nodoc
mixin _$CheckIn {
  String get userId => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get vibeIntent => throw _privateConstructorUsedError;
  int get socialBattery => throw _privateConstructorUsedError;
  String get venueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInCopyWith<CheckIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInCopyWith<$Res> {
  factory $CheckInCopyWith(CheckIn value, $Res Function(CheckIn) then) =
      _$CheckInCopyWithImpl<$Res, CheckIn>;
  @useResult
  $Res call(
      {String userId,
      double latitude,
      double longitude,
      DateTime timestamp,
      String vibeIntent,
      int socialBattery,
      String venueId});
}

/// @nodoc
class _$CheckInCopyWithImpl<$Res, $Val extends CheckIn>
    implements $CheckInCopyWith<$Res> {
  _$CheckInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timestamp = null,
    Object? vibeIntent = null,
    Object? socialBattery = null,
    Object? venueId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vibeIntent: null == vibeIntent
          ? _value.vibeIntent
          : vibeIntent // ignore: cast_nullable_to_non_nullable
              as String,
      socialBattery: null == socialBattery
          ? _value.socialBattery
          : socialBattery // ignore: cast_nullable_to_non_nullable
              as int,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInImplCopyWith<$Res> implements $CheckInCopyWith<$Res> {
  factory _$$CheckInImplCopyWith(
          _$CheckInImpl value, $Res Function(_$CheckInImpl) then) =
      __$$CheckInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      double latitude,
      double longitude,
      DateTime timestamp,
      String vibeIntent,
      int socialBattery,
      String venueId});
}

/// @nodoc
class __$$CheckInImplCopyWithImpl<$Res>
    extends _$CheckInCopyWithImpl<$Res, _$CheckInImpl>
    implements _$$CheckInImplCopyWith<$Res> {
  __$$CheckInImplCopyWithImpl(
      _$CheckInImpl _value, $Res Function(_$CheckInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timestamp = null,
    Object? vibeIntent = null,
    Object? socialBattery = null,
    Object? venueId = null,
  }) {
    return _then(_$CheckInImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      vibeIntent: null == vibeIntent
          ? _value.vibeIntent
          : vibeIntent // ignore: cast_nullable_to_non_nullable
              as String,
      socialBattery: null == socialBattery
          ? _value.socialBattery
          : socialBattery // ignore: cast_nullable_to_non_nullable
              as int,
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInImpl implements _CheckIn {
  const _$CheckInImpl(
      {required this.userId,
      required this.latitude,
      required this.longitude,
      required this.timestamp,
      required this.vibeIntent,
      required this.socialBattery,
      required this.venueId});

  factory _$CheckInImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInImplFromJson(json);

  @override
  final String userId;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final DateTime timestamp;
  @override
  final String vibeIntent;
  @override
  final int socialBattery;
  @override
  final String venueId;

  @override
  String toString() {
    return 'CheckIn(userId: $userId, latitude: $latitude, longitude: $longitude, timestamp: $timestamp, vibeIntent: $vibeIntent, socialBattery: $socialBattery, venueId: $venueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.vibeIntent, vibeIntent) ||
                other.vibeIntent == vibeIntent) &&
            (identical(other.socialBattery, socialBattery) ||
                other.socialBattery == socialBattery) &&
            (identical(other.venueId, venueId) || other.venueId == venueId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, latitude, longitude,
      timestamp, vibeIntent, socialBattery, venueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      __$$CheckInImplCopyWithImpl<_$CheckInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInImplToJson(
      this,
    );
  }
}

abstract class _CheckIn implements CheckIn {
  const factory _CheckIn(
      {required final String userId,
      required final double latitude,
      required final double longitude,
      required final DateTime timestamp,
      required final String vibeIntent,
      required final int socialBattery,
      required final String venueId}) = _$CheckInImpl;

  factory _CheckIn.fromJson(Map<String, dynamic> json) = _$CheckInImpl.fromJson;

  @override
  String get userId;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  DateTime get timestamp;
  @override
  String get vibeIntent;
  @override
  int get socialBattery;
  @override
  String get venueId;
  @override
  @JsonKey(ignore: true)
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
