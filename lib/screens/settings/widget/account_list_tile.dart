import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/extensions.dart';
import 'package:shop/theme/colors.dart';
import 'package:shop/theme/images.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    super.key,
    required this.iconSvg,
    required this.title,
  });

  final String iconSvg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(iconSvg),
          title: Text(
            title,
            style: context.textStyler.titleMedium,
          ),
          trailing: SvgPicture.asset(arrow),
          onTap: () {},
        ),
        const Divider(
          height: 1,
          color: brightGray,
        )
      ],
    );
  }
}
