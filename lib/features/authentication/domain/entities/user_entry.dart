import 'package:equatable/equatable.dart';

class UserEntry extends Equatable {
  final String email;
  final String password;
  final bool returnSecureToken;

  const UserEntry(
      {required this.email,
      required this.password,
      required this.returnSecureToken});

  @override
  List<Object> get props => [email, password, returnSecureToken];
}
