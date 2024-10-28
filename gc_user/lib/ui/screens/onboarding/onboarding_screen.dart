import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/onboarding/onboarding_button.dart';

final List<Map<String, String>> screenList = [
  {
    'image': 'assets/flag.png',
    'heading': 'INTRODUCING FOR THE FIRST TIME',
    'description':
        'The all new grand championship app\nwhich will update your score\nlike never before'
  },
  {
    'image': 'assets/trophy.png',
    'heading': 'INTRODUCING FOR THE FIRST TIME',
    'description':
        'Watch live scores of different games only on the grand championship app'
  },
  {
    'image': 'assets/ground.png',
    'heading': 'INTRODUCING FOR THE FIRST TIME',
    'description':
        'Catch the live scores fro the comfort of your room and find who’s the start player'
  }
];

class OnboardingScreen extends StatelessWidget {
  final int index; // Track the current page index
  final List<Map<String, String>> screenList;
  const OnboardingScreen({
    super.key,
    required this.index,
    required this.screenList,
  });

  @override
  Widget build(BuildContext context) {
    final screen = screenList[index];

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
                    image: AssetImage(screen['image']!),
                  ),
                ),
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 22)),
              Text(
                screen['heading']!,
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
                screen['description']!,
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreen(
                                index: index - 1,
                                screenList: screenList,
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                      ),
                      if (index < screenList.length - 1)
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardingScreen(
                                  index: index + 1,
                                  screenList: screenList,
                                ),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
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
