import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/extensions.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/widgets/button/google_button.dart';
import 'package:shop/widgets/button/main_button.dart';
import 'package:shop/widgets/input/labeled_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 84),
            Column(
              children: [
                Text(
                  context.localizer.helloAgain,
                  style: context.textStyler.displayLarge,
                ),
                Text(
                  context.localizer.youHaveBeenMissed,
                  style: context.textStyler.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 50),
            LabeledInput(labelText: context.localizer.emailAddress),
            const SizedBox(height: 30),
            LabeledInput(
              labelText: context.localizer.password,
              isPassword: true,
              suffixIcon: SvgPicture.asset(eye),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                context.localizer.recoverPassword,
                textAlign: TextAlign.right,
                style: context.textStyler.bodyMedium,
              ),
            ),
            const SizedBox(height: 30),
            MainButton(
              title: context.localizer.signIn,
              onClick: () {},
            ),
            const SizedBox(height: 30),
            const GoogleButton(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.localizer.dontHaveAnAccount,
                      style: context.textStyler.bodySmall,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Text(
                        context.localizer.signUpForFree,
                        style: context.textStyler.titleLarge,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
