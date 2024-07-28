import 'package:flutter/material.dart';
import 'package:task_trek/constants/strings.dart';
import 'package:task_trek/presentation/pages/onboarding_screen.dart';
import 'package:task_trek/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      title: TaskTrekStrings.appName,
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SafeArea(child: OnboardingScreen())
    );
  }
}
