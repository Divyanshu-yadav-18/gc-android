import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/core/style/typography.dart';

class PasswordTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool obsecureText;
  final IconData suffixIcon;

  const PasswordTextField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.controller,
      required this.obsecureText,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: AppColors.inputFieldPrimaryColor,
        ),
        hintText: hintText,
        filled: true,
        fillColor: AppColors.inputFieldSecondaryColor,
        hintStyle: AppTypography.inputFieldPrimaryTextStyle,
        constraints: BoxConstraints(
          maxWidth: AppComponestsSizes(context)
              .runningDeviceDimensionAdjustedWidth(305),
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: AppColors.inputFieldPrimaryColor,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
