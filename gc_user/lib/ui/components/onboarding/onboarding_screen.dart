import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/onboarding/onboarding_button.dart';

class OnboardingScreen extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String description;
  const OnboardingScreen(
      {super.key,
      required this.imagePath,
      required this.heading,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: AppComponestsSizes(context)
                    .runningDeviceDimensionAdjustedHeight(360),
                height: AppComponestsSizes(context)
                    .runningDeviceDimensionAdjustedHeight(467),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 22)),
              Text(
                heading,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'League Spartan',
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 12)),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontFamily: 'League Spartan',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 69)),
              const OnboardingButton(buttonText: 'NEXT')
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SKIP ➔',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
