import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/db/db.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final Db _db = Db.instance;

  UserBloc() : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());
      try {
        final user = await _db.getUser(event.userId);
        if (user != null) {
          emit(UserLoaded(user));
        } else {
          emit(UserError('User not found'));
        }
      } catch (e) {
        emit(UserError('Failed to load user: $e'));
      }
    });

    on<SaveUser>((event, emit) async {
      emit(UserLoading());
      try {
        await _db.setUser(event.user);
        emit(UserLoaded(event.user));
      } catch (e) {
        emit(UserError('Failed to save user: $e'));
      }
    });

    on<DeleteUser>((event, emit) async {
      emit(UserLoading());
      try {
        await _db.deleteUser(event.user);
        emit(UserInitial());
      } catch (e) {
        emit(UserError('Failed to delete user: $e'));
      }
    });
  }
}
