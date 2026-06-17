import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vibee/core/services/location_service.dart';
import 'package:vibee/features/radar/data/check_in_repository.dart';
import 'package:vibee/features/radar/domain/check_in.dart';

part 'radar_providers.g.dart';

@riverpod
Stream<List<CheckIn>> nearbyUsersStream(NearbyUsersStreamRef ref) {
  final positionAsync = ref.watch(positionStreamProvider);

  return positionAsync.when(
    data: (position) {
      return ref.watch(checkInRepositoryProvider).getNearbyUsers(
        position.latitude,
        position.longitude,
        1.0, // 1km radius
      );
    },
    loading: () => Stream.value([]),
    error: (_, __) => Stream.value([]),
  );
}

@riverpod
class CheckInStatus extends _$CheckInStatus {
  @override
  FutureOr<CheckIn?> build() async {
    // In a real app, we might fetch the current user's check-in from Firestore
    return null;
  }

  Future<void> checkIn({
    required String userId,
    required dynamic venue, // Using dynamic for now to avoid import loops if any, but Venue is fine
    required Position position,
    required String vibeIntent,
    required int socialBattery,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(checkInRepositoryProvider).performCheckIn(
        userId: userId,
        venue: venue,
        currentPosition: position,
        vibeIntent: vibeIntent,
        socialBattery: socialBattery,
      );
      return CheckIn(
        userId: userId,
        latitude: position.latitude,
        longitude: position.longitude,
        timestamp: DateTime.now(),
        vibeIntent: vibeIntent,
        socialBattery: socialBattery,
        venueId: venue.id,
      );
    });
  }
}
