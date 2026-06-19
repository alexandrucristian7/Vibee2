import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

class OnboardingPermissionsScreen extends ConsumerStatefulWidget {
  const OnboardingPermissionsScreen({super.key});

  @override
  ConsumerState<OnboardingPermissionsScreen> createState() => _OnboardingPermissionsScreenState();
}

class _OnboardingPermissionsScreenState extends ConsumerState<OnboardingPermissionsScreen> {
  bool _isLoading = false;

  Future<void> _handlePermissionRequest() async {
    setState(() => _isLoading = true);

    try {
      LocationPermission permission = await Geolocator.requestPermission();

      if (!mounted) return;

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        context.go('/radar');
      } else if (permission == LocationPermission.deniedForever) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enable location in settings to use the radar.')),
        );
        await Geolocator.openAppSettings();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error requesting permission: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 80,
                color: theme.colorScheme.primary,
                semanticLabel: 'Location access illustration',
              ),
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
                onPressed: _isLoading ? null : _handlePermissionRequest,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: theme.colorScheme.onPrimary,
                ),
                child: _isLoading
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: theme.colorScheme.onPrimary,
                        ),
                      )
                    : const Text('Enable Location Access'),
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
