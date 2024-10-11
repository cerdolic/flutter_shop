import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/extensions.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/widgets/button/google_button.dart';
import 'package:shop/widgets/button/main_button.dart';
import 'package:shop/widgets/input/labeled_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  context.localizer.createAccount,
                  style: context.textStyler.displayLarge,
                ),
                Text(
                  context.localizer.letsCreateAccountTogether,
                  style: context.textStyler.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 50),
            LabeledInput(labelText: context.localizer.yourName),
            const SizedBox(height: 30),
            LabeledInput(labelText: context.localizer.emailAddress),
            const SizedBox(height: 30),
            LabeledInput(
              labelText: context.localizer.password,
              isPassword: true,
              suffixIcon: SvgPicture.asset(eye),
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
                      context.localizer.alreadyHaveAnAccount,
                      style: context.textStyler.bodySmall,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed('/login');
                      },
                      child: Text(
                        context.localizer.signIn,
                        style: context.textStyler.headlineSmall,
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
