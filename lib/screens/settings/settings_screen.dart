import 'package:flutter/material.dart';
import 'package:shop/screens/settings/widget/account_list_section_title.dart';
import 'package:shop/screens/settings/widget/account_list_tile.dart';
import 'package:shop/screens/settings/widget/app_settings_list_tile.dart';
import 'package:shop/theme/colors.dart';
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
            SliverList.separated(
              itemBuilder: (context, index) {
                final items = [
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
                ];
                return items[index];
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: brightGray,
              ),
              itemCount: 4,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),
            const SliverToBoxAdapter(
              child: AccountListSectionTitle(
                title: 'App Settings',
              ),
            ),
            SliverList.separated(
              itemBuilder: (context, index) {
                final items = [
                  AppSettingsListTile(
                    title: 'Dark Mode',
                    enabled: isDarkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        isDarkModeEnabled = value;
                      });
                    },
                  )
                ];
                return items[index];
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: brightGray,
              ),
              itemCount: 1,
            ),
          ],
        ),
      ),
    );
  }
}
