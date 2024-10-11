import 'package:flutter/material.dart';
import 'package:shop/extensions.dart';
import 'package:shop/theme/colors.dart';

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
        color: unitedNationsBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: TextButton(
        onPressed: onClick,
        child: Center(
          child: Text(
            title,
            style: context.textStyler.labelLarge,
          ),
        ),
      ),
    );
  }
}
