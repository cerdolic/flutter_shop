import 'package:flutter/material.dart';
import 'package:shop/theme/colors.dart';
import 'package:shop/theme/text_styles.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: ghostWhite,
  appBarTheme: AppBarTheme(
    backgroundColor: ghostWhite,
    titleTextStyle: darkGunmetal_18_500,
    iconTheme: const IconThemeData(color: darkGunmetal),
    elevation: 0,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: ghostWhite,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ghostWhite,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: abyssalAnchorfishBlue,
  ),
  textTheme: TextTheme(
    bodyLarge: darkGunmetal_14_400,
    bodyMedium: auroMetalSaurus_14_400,
    displayLarge: darkGunmetal_28_500,
    displayMedium: darkGunmetal_24_500,
    displaySmall: darkGunmetal_20_500,
    headlineMedium: darkGunmetal_18_500,
    headlineSmall: darkGunmetal_16_500,
    titleLarge: darkGunmetal_14_500,
    titleMedium: auroMetalSaurus_16_400,
    titleSmall: auroMetalSaurus_14_400,
    labelLarge: white_18_500,
    bodySmall: auroMetalSaurus_12_400,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: unitedNationsBlue,
    textTheme: ButtonTextTheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: unitedNationsBlue,
    foregroundColor: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: abyssalAnchorfishBlue,
  appBarTheme: AppBarTheme(
    backgroundColor: abyssalAnchorfishBlue,
    titleTextStyle: white_18_500,
    iconTheme: const IconThemeData(color: Colors.white),
    elevation: 0,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: abyssalAnchorfishBlue,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: abyssalAnchorfishBlue,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: abyssalAnchorfishBlue,
  ),
  textTheme: TextTheme(
    bodyLarge: ghostWhite_14_400,
    bodyMedium: brightGray_14_400,
    displayLarge: ghostWhite_28_500,
    displayMedium: ghostWhite_24_500,
    displaySmall: ghostWhite_20_500,
    headlineMedium: ghostWhite_18_500,
    headlineSmall: ghostWhite_16_500,
    titleLarge: ghostWhite_14_500,
    titleMedium: brightGray_16_400,
    titleSmall: brightGray_14_400,
    labelLarge: white_16_500,
    bodySmall: brightGray_12_400,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: abyssalAnchorfishBlue,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: abyssalAnchorfishBlue,
    foregroundColor: Colors.white,
  ),
);
