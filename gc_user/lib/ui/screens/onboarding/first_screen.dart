import 'package:flutter/material.dart';
import 'package:gc_user/ui/components/onboarding/onboarding_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen(
      imagePath: 'assets/flag.png',
      heading: 'INTRODUCING FOR THE FIRST TIME',
      description:
          'The all new grand championship app\nwhich will update your score\nlike never before',
    );
  }
}
