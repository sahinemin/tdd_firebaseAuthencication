import 'package:dartz/dartz.dart';
import 'package:login_app/core/usecase.dart';
import 'package:login_app/features/authentication/domain/repositories/authentication_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entry.dart';
import '../entities/user_output.dart';

class LogIn implements UseCase<UserOutput, UserEntry> {
  final AuthenticationRepository repository;

  LogIn(this.repository);

  @override
  Future<Either<Failure, UserOutput>?> call(
      {required UserEntry userEntry}) async {
    return await repository.logIn(userEntry);
  }
}
