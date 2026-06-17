import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vibee/features/radar/domain/check_in.dart';
import 'package:vibee/features/radar/domain/venue.dart';

part 'check_in_repository.g.dart';

class CheckInRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> performCheckIn({
    required String userId,
    required Venue venue,
    required Position currentPosition,
    required String vibeIntent,
    required int socialBattery,
  }) async {
    // 100m Geofencing check
    double distance = Geolocator.distanceBetween(
      currentPosition.latitude,
      currentPosition.longitude,
      venue.latitude,
      venue.longitude,
    );

    if (distance > 100) {
      throw Exception('You are too far from this venue to check in.');
    }

    final checkIn = CheckIn(
      userId: userId,
      latitude: currentPosition.latitude,
      longitude: currentPosition.longitude,
      timestamp: DateTime.now(),
      vibeIntent: vibeIntent,
      socialBattery: socialBattery,
      venueId: venue.id,
    );

    await _firestore.collection('check_ins').doc(userId).set(checkIn.toJson());
  }

  Stream<List<CheckIn>> getNearbyUsers(double lat, double lon, double radiusInKm) {
    // Simplified Bounding Box Query
    double latDelta = radiusInKm / 111.0;
    double lonDelta = radiusInKm / (111.0 * 0.7); // Approximate for mid-latitudes

    return _firestore
        .collection('check_ins')
        .where('latitude', isGreaterThan: lat - latDelta)
        .where('latitude', isLessThan: lat + latDelta)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => CheckIn.fromJson(doc.data()))
          .where((checkIn) {
            // Further filter by longitude and actual distance
            bool inLonRange = checkIn.longitude > lon - lonDelta &&
                             checkIn.longitude < lon + lonDelta;
            if (!inLonRange) return false;

            double dist = Geolocator.distanceBetween(
              lat, lon, checkIn.latitude, checkIn.longitude
            );
            return dist <= radiusInKm * 1000;
          })
          .toList();
    });
  }
}

@riverpod
CheckInRepository checkInRepository(CheckInRepositoryRef ref) {
  return CheckInRepository();
}
