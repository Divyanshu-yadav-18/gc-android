import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/core/style/typography.dart';

class MainScreenButton extends StatelessWidget {
  final String buttonText;
  const MainScreenButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        fixedSize: Size(
            AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedWidth(303),
            AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedHeight(43.6)),
        foregroundColor: AppColors.authButtonForegroundColor,
        backgroundColor: AppColors.mainScreenButtonBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: AppTypography.authButtonTextStyle,
      ),
    );
  }
}
