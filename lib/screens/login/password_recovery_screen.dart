import 'package:flutter/material.dart';
import 'package:shop/extensions.dart';
import 'package:shop/widgets/button/main_button.dart';
import 'package:shop/widgets/input/labeled_input.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

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
                  context.localizer.recoverPassword,
                  style: context.textStyler.displayLarge,
                ),
                Text(
                  context
                      .localizer.pleaseEnterYourEmailToReceiveVerificationCode,
                  textAlign: TextAlign.center,
                  style: context.textStyler.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 50),
            LabeledInput(
              labelText: context.localizer.emailAddress,
            ),
            const SizedBox(height: 30),
            MainButton(
              title: context.localizer.continue_,
              onClick: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
