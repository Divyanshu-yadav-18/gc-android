import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_text_field.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';
import 'package:gc_user/ui/components/auth/password_text_field.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  late final TextEditingController _pwTextEditingController;
  late final TextEditingController _cpwTextEditingController;

  @override
  void initState() {
    super.initState();
    _pwTextEditingController = TextEditingController();
    _cpwTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _pwTextEditingController.dispose();
    _cpwTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppComponestsSizes(context)
          .runningDeviceDimensionAdjustedWidth(360.0),
      height:
          AppComponestsSizes(context).runningDeviceDimensionAdjustedHeight(716),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: AppColors.primaryBackgroundColor),
      child: Stack(
        children: [
          Positioned(
            left: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedWidth(27.0),
            top: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedHeight(50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(40.0)),
                const SizedBox(
                  child:
                      DisplayText(text: 'Enter New \nPassword', fontSize: 33),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(15.0),
                ),
                const SizedBox(
                  child: DisplayText(
                      text:
                          'The password must consists a letter,\ndigit and a special character. ',
                      fontSize: 20),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(40.0),
                ),
                PasswordTextField(
                  hintText: 'Enter your new password',
                  prefixIcon: Icons.key,
                  controller: _pwTextEditingController,
                  obsecureText: true,
                  suffixIcon: Icons.visibility_off,
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                PasswordTextField(
                  hintText: 'Confirm new password',
                  prefixIcon: Icons.key,
                  controller: _cpwTextEditingController,
                  obsecureText: false,
                  suffixIcon: Icons.visibility_rounded,
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                const AuthButton(buttonText: 'SUBMIT', isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
