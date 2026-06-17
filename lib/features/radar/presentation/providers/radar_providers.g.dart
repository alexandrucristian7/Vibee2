// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radar_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nearbyUsersStreamHash() => r'de2ae720d422cea25a9b0d4fcf2264aa0f514eac';

/// See also [nearbyUsersStream].
@ProviderFor(nearbyUsersStream)
final nearbyUsersStreamProvider =
    AutoDisposeStreamProvider<List<CheckIn>>.internal(
  nearbyUsersStream,
  name: r'nearbyUsersStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nearbyUsersStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NearbyUsersStreamRef = AutoDisposeStreamProviderRef<List<CheckIn>>;
String _$checkInStatusHash() => r'521ba5b3e54891ffcbe3bce1d594026d5124a0a9';

/// See also [CheckInStatus].
@ProviderFor(CheckInStatus)
final checkInStatusProvider =
    AutoDisposeAsyncNotifierProvider<CheckInStatus, CheckIn?>.internal(
  CheckInStatus.new,
  name: r'checkInStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$checkInStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CheckInStatus = AutoDisposeAsyncNotifier<CheckIn?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
