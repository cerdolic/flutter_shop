import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/theme/text_styles.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text(
                'Sign in with google',
                style: darkGunmetal_18_500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
