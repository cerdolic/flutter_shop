import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/screens/login/login_screen.dart';
import 'package:shop/screens/login/signup_screen.dart';
import 'package:shop/screens/user/user_screen.dart';

var routes = [
  GoRoute(
    path: '/signup',
    builder: (context, state) => const SignUpScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/user',
    builder: (context, state) => const UserScreen(),
  ),
  GoRoute(
    path: '/product_card/:id',
    builder: (context, state) {
      final id = state.pathParameters['id'];
      if (id == null) {
        return const ErrorPage(error: 'Product ID is missing');
      }
      return Container();
    },
  ),
];

class ErrorPage extends StatelessWidget {
  final String error;

  const ErrorPage({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(child: Text('Error: $error')),
    );
  }
}
