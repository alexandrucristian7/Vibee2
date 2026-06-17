import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vibee/features/radar/presentation/screens/radar_screen.dart';
import 'package:vibee/features/radar/presentation/screens/onboarding_permissions_screen.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingPermissionsScreen(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const PlaceholderScreen(title: 'Auth Screen'),
    ),
    GoRoute(
      path: '/radar',
      builder: (context, state) => const RadarScreen(),
    ),
  ],
);

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
