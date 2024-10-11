import 'package:equatable/equatable.dart';
import 'package:shop/model/user.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadUser extends UserEvent {
  LoadUser();

  @override
  List<Object?> get props => [];
}

class SaveUser extends UserEvent {
  final User user;

  SaveUser(this.user);

  @override
  List<Object?> get props => [user];
}

class DeleteUser extends UserEvent {
  final User user;

  DeleteUser(this.user);

  @override
  List<Object?> get props => [user];
}
