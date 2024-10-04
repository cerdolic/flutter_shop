import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';
import 'package:shop/theme/text_styles.dart';
import 'package:shop/widgets/image/tinted_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.iconSvg,
  });

  final String title;
  final String iconSvg;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pop(context);
        onTap.call();
      },
      leading: TintedSvg(
        asset: iconSvg,
        color: auroMetalSaurus,
      ),
      title: Text(
        title,
        style: darkGunmetal_18_500,
      ),
    );
  }
}
