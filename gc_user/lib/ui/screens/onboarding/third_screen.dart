import 'package:flutter/material.dart';
import 'package:gc_user/ui/components/onboarding/onboarding_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
      imagePath: 'assets/ground.png',
      heading: 'INTRODUCING FOR THE FIRST TIME',
      description:
          'Catch the live scores fro the comfort of your room and find who’s the start player',
    );
  }
}
