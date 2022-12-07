import '../../domain/entities/user_entry.dart';
import '../../domain/entities/user_output.dart';

abstract class AuthenticationFirestore {
  Future<UserOutput>? logIn(UserEntry? userEntry);
  Future<UserOutput>? signUp(UserEntry? userEntry);
}
