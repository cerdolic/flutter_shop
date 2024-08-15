import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/theme/images.dart';
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
      backgroundColor: const Color(0xFFF8F9FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 84),
            const Column(
              children: [
                Text(
                  'Hello Again!',
                  style: TextStyle(
                    color: Color(0xFF1A242F),
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Welcome Back You’ve Been Missed!',
                  style: TextStyle(
                    color: Color(0xFF707B81),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Recovery Password',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF707B81),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MainButton(
              title: 'Sign In',
              onClick: () {},
            ),
            const SizedBox(height: 30),
            Container(
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset(google),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Sign in with google',
                        style: TextStyle(
                          color: Color(0xFF1A242F),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: Color(0xFF707B81),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Sign Up for free',
                      style: TextStyle(
                        color: Color(0xFF1A242F),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
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
