import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_app/features/authentication/domain/entities/user_entry.dart';
import 'package:login_app/features/authentication/domain/entities/user_output.dart';
import 'package:login_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:login_app/features/authentication/domain/usecases/login.dart';
import 'package:mockito/mockito.dart';

class MockSignUpRepository extends Mock implements AuthenticationRepository {}

void main() async {
  LogIn? useCase;
  MockSignUpRepository? mockSignUpRepository;

  setUp(() {
    mockSignUpRepository = MockSignUpRepository();
    useCase = LogIn(mockSignUpRepository!);
  });

  const UserEntry userEntry = UserEntry(
      email: "admin@admin", password: "123456", returnSecureToken: true);

  const UserOutput userOutput = UserOutput(
      kind: "a",
      localId: "a",
      email: "admin@admin",
      displayName: "",
      idToken: "a",
      registered: true,
      refreshToken: "a",
      expiresIn: "a");

  test('should logIn the app from firebase auth system', () async {
    when(mockSignUpRepository!.logIn(any))
        .thenAnswer((_) async => const Right(userOutput));
    final result = await useCase!(userEntry: userEntry);
    expect(result, const Right(userOutput));

    verify(mockSignUpRepository!.logIn(userEntry));
    verifyNoMoreInteractions(mockSignUpRepository);
  });
}
