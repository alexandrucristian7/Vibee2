import 'package:vibee/features/radar/domain/venue.dart';

class MockDataService {
  List<Venue> getMockVenues() {
    return [
      const Venue(
        id: '1',
        name: 'The Old Pub',
        latitude: 44.4268,
        longitude: 26.1025,
        category: 'Pub',
      ),
      const Venue(
        id: '2',
        name: 'Neon Lounge',
        latitude: 44.4350,
        longitude: 26.1100,
        category: 'Lounge',
      ),
      const Venue(
        id: '3',
        name: 'Cyber Cafe',
        latitude: 44.4300,
        longitude: 26.0950,
        category: 'Cafe',
      ),
    ];
  }
}
