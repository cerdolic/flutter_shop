import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TintedSvg extends StatelessWidget {
  const TintedSvg({
    super.key,
    required this.asset,
    required this.color,
  });

  final String asset;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }
}
