import 'package:driveway_app/presentasi/screen/onboarding_screen.dart';
import 'package:driveway_app/presentasi/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:driveway_app/presentasi/screen/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driveway.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        'onboardingScreen': (context) => const OnboardingScreen(),
        'dashboardScreen': (context) => const DashboardScreen(),
      },
    );
  }
}
