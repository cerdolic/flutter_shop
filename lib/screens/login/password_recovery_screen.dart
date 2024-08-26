import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';
import 'package:shop/theme/text_styles.dart';
import 'package:shop/widgets/button/main_button.dart';
import 'package:shop/widgets/input/labeled_input.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ghostWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 84),
            Column(
              children: [
                Text(
                  'Recovery Password',
                  style: darkGunmetal_28_500,
                ),
                Text(
                  'Please Enter Your Email Address To Recieve a Verification Code',
                  textAlign: TextAlign.center,
                  style: auroMetalSaurus_16_400,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const LabeledInput(labelText: 'Email Address'),
            const SizedBox(height: 30),
            MainButton(
              title: 'Continue',
              onClick: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
