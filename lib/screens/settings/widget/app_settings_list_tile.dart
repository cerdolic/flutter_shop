import 'package:flutter/material.dart';
import 'package:shop/theme/text_styles.dart';

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
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: darkGunmetal_16_400,
      ),
      trailing: Switch(
        value: enabled,
        onChanged: onChanged,
      ),
      onTap: () {},
    );
  }
}
