import 'package:dartz/dartz.dart';
import '../entities/user_entry.dart';
import '../entities/user_output.dart';
import '../../../../core/error/failures.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserOutput>>? logIn(UserEntry? userEntry);
  Future<Either<Failure, UserOutput>>? signUp(UserEntry? userEntry);
}
