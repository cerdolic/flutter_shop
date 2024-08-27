import 'package:flutter/material.dart';
import 'package:shop/screens/search/search_screen.dart';
import 'package:shop/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Airbnb Cereal App',
        scaffoldBackgroundColor: ghostWhite,
        appBarTheme: const AppBarTheme(
          backgroundColor: ghostWhite,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SearchScreen(),
    );
  }
}
