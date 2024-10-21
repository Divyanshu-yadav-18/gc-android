import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/main_screen_button.dart';

class MainImgFirstScreen extends StatelessWidget {
  const MainImgFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainImgPagebackgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/flag.png'),
                ),
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 22)),
              const Text(
                'INTRODUCING FOR THE FIRST TIME',
                style: TextStyle(
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
              const Text(
                'The all new grand championship app\nwhich will update your score\nlike never before',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontFamily: 'League Spartan',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(0.84 * 69)),
              const MainScreenButton(buttonText: 'NEXT')
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
