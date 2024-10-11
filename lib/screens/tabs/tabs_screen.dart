import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/extensions.dart';
import 'package:shop/screens/settings/settings_screen.dart';
import 'package:shop/screens/tabs/widget/drawer_item.dart';
import 'package:shop/theme/colors.dart';
import 'package:shop/theme/images.dart';
import 'package:shop/widgets/image/tinted_svg.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Favorites Screen')),
    const Center(child: Text('Notifications Screen')),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/64x64"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Hey, 👋',
                    style: context.textStyler.titleMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Alisson Becker',
                    style: context.textStyler.displayMedium,
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            DrawerItem(
              title: context.localizer.profile,
              onTap: () {},
              iconSvg: profile,
            ),
            DrawerItem(
              title: context.localizer.homePage,
              onTap: () {},
              iconSvg: home,
            ),
            DrawerItem(
              title: context.localizer.myCart,
              onTap: () {},
              iconSvg: cart,
            ),
            DrawerItem(
              title: context.localizer.favorite,
              onTap: () {},
              iconSvg: favorite,
            ),
            DrawerItem(
              title: context.localizer.orders,
              onTap: () {},
              iconSvg: delivery,
            ),
            DrawerItem(
              title: context.localizer.notifications,
              onTap: () {},
              iconSvg: notifications,
            ),
            const SizedBox(height: 36),
            const Divider(
              indent: 20,
              endIndent: 120,
              height: 2,
              color: Color(0xFF2D3B48),
            ),
            const SizedBox(height: 36),
            DrawerItem(
              title: context.localizer.signOut,
              onTap: () {},
              iconSvg: logout,
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(home),
            activeIcon: TintedSvg(asset: home, color: unitedNationsBlue),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(favorite),
            activeIcon: TintedSvg(asset: favorite, color: unitedNationsBlue),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(notification),
            activeIcon:
                TintedSvg(asset: notification, color: unitedNationsBlue),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(profile),
            activeIcon: TintedSvg(asset: profile, color: unitedNationsBlue),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
