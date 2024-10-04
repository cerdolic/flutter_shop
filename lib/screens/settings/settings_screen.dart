import 'package:flutter/material.dart';
import 'package:shop/screens/settings/widget/account_list_section_title.dart';
import 'package:shop/screens/settings/widget/account_list_tile.dart';
import 'package:shop/screens/settings/widget/app_settings_list_tile.dart';
import 'package:shop/theme/images.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            const SliverToBoxAdapter(
              child: AccountListSectionTitle(
                title: 'Account',
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AccountListTile(
                    iconSvg: notifications,
                    title: 'Notification Settings',
                  ),
                  AccountListTile(
                    iconSvg: shopping,
                    title: 'Shipping Address',
                  ),
                  AccountListTile(
                    iconSvg: payment,
                    title: 'Payment Info',
                  ),
                  AccountListTile(
                    iconSvg: delete,
                    title: 'Delete Account',
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),
            const SliverToBoxAdapter(
              child: AccountListSectionTitle(
                title: 'App Settings',
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AppSettingsListTile(
                    title: 'Dark Mode',
                    enabled: isDarkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        isDarkModeEnabled = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
