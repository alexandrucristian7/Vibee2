import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PlaceholderScreen(title: 'Splash/Auth'),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const PlaceholderScreen(title: 'Auth Screen'),
    ),
    GoRoute(
      path: '/radar',
      builder: (context, state) => const PlaceholderScreen(title: 'Radar Screen'),
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
