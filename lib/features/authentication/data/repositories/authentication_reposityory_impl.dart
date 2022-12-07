import 'package:login_app/core/platform/network_info.dart';
import 'package:login_app/features/authentication/domain/entities/user_output.dart';

import 'package:login_app/features/authentication/domain/entities/user_entry.dart';

import 'package:login_app/core/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/authentication_repository.dart';
import '../datasources/authentication_firebase.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationFirestore? authenticationFirestore;
  final NetworkInfo? networkInfo;

  AuthenticationRepositoryImpl(
      {required this.authenticationFirestore, required this.networkInfo});

  @override
  Future<Either<Failure, UserOutput>>? logIn(UserEntry? userEntry) {
    networkInfo!.isConnected;
    return null;
  }

  @override
  Future<Either<Failure, UserOutput>>? signUp(UserEntry? userEntry) {
    networkInfo!.isConnected;
    return null;
  }
}
