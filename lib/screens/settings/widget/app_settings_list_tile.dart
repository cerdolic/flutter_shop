import 'package:flutter/material.dart';
import 'package:shop/extensions.dart';
import 'package:shop/theme/colors.dart';

class AppSettingsListTile extends StatelessWidget {
  const AppSettingsListTile({
    super.key,
    required this.title,
    required this.enabled,
    required this.onChanged,
  });

  final String title;
  final bool enabled;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: context.textStyler.titleMedium,
          ),
          trailing: Switch(
            value: enabled,
            onChanged: onChanged,
          ),
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
