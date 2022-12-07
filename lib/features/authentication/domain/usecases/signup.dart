import 'package:dartz/dartz.dart';
import 'package:login_app/features/authentication/domain/repositories/authentication_repository.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase.dart';
import '../entities/user_entry.dart';
import '../entities/user_output.dart';

class SignUp implements UseCase<UserOutput, UserEntry> {
  final AuthenticationRepository repository;

  SignUp(this.repository);
  @override
  Future<Either<Failure, UserOutput>?> call(
      {required UserEntry userEntry}) async {
    return await repository.signUp(userEntry);
  }
}
