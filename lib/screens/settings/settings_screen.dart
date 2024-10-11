import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:shop/extensions.dart';
import 'package:shop/main.dart';
import 'package:shop/screens/settings/widget/account_list_section_title.dart';
import 'package:shop/screens/settings/widget/account_list_tile.dart';
import 'package:shop/screens/settings/widget/app_settings_list_tile.dart';
import 'package:shop/screens/settings/widget/language_dropdown.dart';
import 'package:shop/theme/images.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LanguageDropdown(
              selectedLocale: MyApp.getLocale(context),
              onChanged: (locale) {
                MyApp.setLocale(context, locale);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            SliverToBoxAdapter(
              child: AccountListSectionTitle(
                title: context.localizer.account,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AccountListTile(
                    iconSvg: notifications,
                    title: context.localizer.notificationSettings,
                  ),
                  AccountListTile(
                    iconSvg: shopping,
                    title: context.localizer.shippingAddress,
                  ),
                  AccountListTile(
                    iconSvg: payment,
                    title: context.localizer.paymentInfo,
                  ),
                  AccountListTile(
                    iconSvg: delete,
                    title: context.localizer.deleteAccount,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),
            SliverToBoxAdapter(
              child: AccountListSectionTitle(
                title: context.localizer.appSettings,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AppSettingsListTile(
                    title: context.localizer.darkMode,
                    enabled: AdaptiveTheme.of(context).mode.isDark,
                    onChanged: (value) {
                      if (value) {
                        AdaptiveTheme.of(context).setDark();
                      } else {
                        AdaptiveTheme.of(context).setLight();
                      }
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
