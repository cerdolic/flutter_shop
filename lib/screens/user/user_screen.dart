import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/bloc/user/user_bloc.dart';
import 'package:shop/bloc/user/user_event.dart';
import 'package:shop/bloc/user/user_state.dart';
import 'package:shop/model/user.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(LoadUser()),
      child: Scaffold(
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UserLoaded) {
              return UserDetails(user: state.user);
            } else if (state is UserError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const Center(
                child: Text('User not found'),
              );
            }
          },
        ),
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  final User user;

  const UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: ${user.name}',
          ),
        ],
      ),
    );
  }
}
