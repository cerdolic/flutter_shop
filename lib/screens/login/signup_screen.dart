import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/theme/text_styles.dart';
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
                  'Create Account',
                  style: darkGunmetal_28_500,
                ),
                Text(
                  'Let’s Create Account Together',
                  style: auroMetalSaurus_16_400,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const LabeledInput(labelText: 'Your Name'),
            const SizedBox(height: 30),
            const LabeledInput(labelText: 'Email Address'),
            const SizedBox(height: 30),
            LabeledInput(
              labelText: 'Password',
              isPassword: true,
              suffixIcon: SvgPicture.asset(eye),
            ),
            const SizedBox(height: 30),
            MainButton(
              title: 'Sign In',
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
                      'Already have an account?',
                      style: auroMetalSaurus_12_400,
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        context.push('/login');
                      },
                      child: Text(
                        'Sign in',
                        style: darkGunmetal_12_500,
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
