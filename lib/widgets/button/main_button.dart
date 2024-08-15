import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.onClick,
    this.radius = 50,
    this.horizontalPadding = 0,
    this.height = 54,
  });

  final String title;
  final VoidCallback onClick;
  final double radius;
  final double horizontalPadding;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: ShapeDecoration(
        color: const Color(0xFF5B9EE1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: TextButton(
        onPressed: onClick,
        child: Center(
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
