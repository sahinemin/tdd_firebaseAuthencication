import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_app/features/authentication/domain/entities/user_entry.dart';
import 'package:login_app/features/authentication/domain/entities/user_output.dart';
import 'package:login_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:login_app/features/authentication/domain/usecases/signup.dart';
import 'package:mockito/mockito.dart';

class MockSignUpRepository extends Mock implements AuthenticationRepository {}

void main() async {
  SignUp? useCase;
  MockSignUpRepository? mockSignUpRepository;

  setUp(() {
    mockSignUpRepository = MockSignUpRepository();
    useCase = SignUp(mockSignUpRepository!);
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

  test('should save the user to firebase auth system', () async {
    when(mockSignUpRepository!.signUp(any))
        .thenAnswer((_) async => const Right(userOutput));
    final result = await useCase!(userEntry: userEntry);
    expect(result, const Right(userOutput));

    verify(mockSignUpRepository!.signUp(userEntry));
    verifyNoMoreInteractions(mockSignUpRepository);
  });
}
