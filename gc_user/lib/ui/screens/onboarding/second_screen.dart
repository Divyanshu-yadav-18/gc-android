import 'package:flutter/material.dart';
import 'package:gc_user/ui/components/onboarding/onboarding_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
      imagePath: 'assets/trophy.png',
      heading: 'INTRODUCING FOR THE FIRST TIME',
      description:
          'Watch live scores of different games only on the grand championship app',
    );
  }
}
