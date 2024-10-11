import 'package:flutter/material.dart';
import 'package:shop/extensions.dart';

class AccountListSectionTitle extends StatelessWidget {
  const AccountListSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textStyler.headlineMedium,
    );
  }
}
