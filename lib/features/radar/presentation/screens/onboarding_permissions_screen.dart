import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class OnboardingPermissionsScreen extends ConsumerWidget {
  const OnboardingPermissionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on, size: 80, color: Colors.blue),
              const SizedBox(height: 32),
              const Text(
                'Explore your neighborhood',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Vibee uses your location to show you who is around and where the best vibes are. We recommend "Always" or "While Using" for the best experience.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () async {
                  LocationPermission permission = await Geolocator.requestPermission();
                  if (permission == LocationPermission.whileInUse ||
                      permission == LocationPermission.always) {
                    if (context.mounted) context.go('/radar');
                  } else if (permission == LocationPermission.deniedForever) {
                     if (context.mounted) {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text('Please enable location in settings to use the radar.')),
                       );
                       await Geolocator.openAppSettings();
                     }
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Enable Location Access'),
              ),
              TextButton(
                onPressed: () => context.go('/auth'),
                child: const Text('Not now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
