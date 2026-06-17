import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:vibee/core/services/location_service.dart';
import 'package:vibee/features/radar/presentation/providers/radar_providers.dart';

class RadarScreen extends ConsumerStatefulWidget {
  const RadarScreen({super.key});

  @override
  ConsumerState<RadarScreen> createState() => _RadarScreenState();
}

class _RadarScreenState extends ConsumerState<RadarScreen> {
  MapboxMap? _mapboxMap;
  PointAnnotationManager? _annotationManager;

  void _onMapCreated(MapboxMap mapboxMap) {
    _mapboxMap = mapboxMap;
    _mapboxMap?.annotations.createPointAnnotationManager().then((value) {
      _annotationManager = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final positionAsync = ref.watch(positionStreamProvider);
    final nearbyUsersAsync = ref.watch(nearbyUsersStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Radar'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(
            key: const ValueKey("mapWidget"),
            styleUri: MapboxStyles.DARK,
            onMapCreated: _onMapCreated,
          ),
          positionAsync.when(
            data: (pos) => Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
                child: Text('Lat: ${pos.latitude.toStringAsFixed(4)}, Lon: ${pos.longitude.toStringAsFixed(4)}'),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Error: $e')),
          ),
          nearbyUsersAsync.when(
            data: (users) {
              // Update markers on map
              _updateMarkers(users);
              return Positioned(
                top: 100,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${users.length}'),
                ),
              );
            },
            loading: () => const SizedBox(),
            error: (_, __) => const SizedBox(),
          ),
        ],
      ),
    );
  }

  void _updateMarkers(dynamic users) {
    if (_annotationManager == null) return;

    _annotationManager?.deleteAll();

    for (var user in users) {
      _annotationManager?.create(
        PointAnnotationOptions(
          geometry: Point(coordinates: Position(user.longitude, user.latitude)),
          textField: user.vibeIntent,
          textColor: Colors.cyan.value.toInt(),
          iconImage: "marker-15", // Default mapbox marker
        ),
      );
    }
  }

  @override
  void dispose() {
    // Note: In some versions of mapbox_maps_flutter, specific cleanup might be needed
    super.dispose();
  }
}
