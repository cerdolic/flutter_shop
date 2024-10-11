import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/theme/text_styles.dart';
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isLargeScreen = constraints.maxWidth > 600;
          double horizontalPadding = isLargeScreen ? 100 : 20;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                children: [
                  const SizedBox(height: 84),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Again!',
                        style: isLargeScreen
                            ? darkGunmetal_28_500.copyWith(fontSize: 34)
                            : darkGunmetal_28_500,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Welcome Back You’ve Been Missed!',
                        style: isLargeScreen
                            ? auroMetalSaurus_16_400.copyWith(fontSize: 20)
                            : auroMetalSaurus_16_400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const LabeledInput(labelText: 'Email Address'),
                  const SizedBox(height: 30),
                  LabeledInput(
                    labelText: 'Password',
                    isPassword: true,
                    suffixIcon: SvgPicture.asset(eye),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Recover Password',
                        style: auroMetalSaurus_13_400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  MainButton(
                    title: 'Sign In',
                    onClick: () {},
                  ),
                  const SizedBox(height: 30),
                  const GoogleButton(),
                  const SizedBox(height: 20),
                  if (!isLargeScreen) const SizedBox(height: 20),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: auroMetalSaurus_12_400,
                          ),
                          const SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              context.push('/signup');
                            },
                            child: Text(
                              'Sign Up for free',
                              style: darkGunmetal_12_500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
