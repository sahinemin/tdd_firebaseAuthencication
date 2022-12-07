import 'package:login_app/core/platform/network_info.dart';
import 'package:login_app/features/authentication/data/datasources/authentication_firebase.dart';
import 'package:login_app/features/authentication/data/models/user_entry_model.dart';
import 'package:login_app/features/authentication/data/repositories/authentication_reposityory_impl.dart';
import 'package:login_app/features/authentication/domain/entities/user_entry.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<NetworkInfo>()])
import 'authentication_reposityory_impl_test.mocks.dart';

class MockAuthenticationFirestore extends Mock
    implements AuthenticationFirestore {}

void main() {
  AuthenticationRepositoryImpl? repositoryImpl;
  MockAuthenticationFirestore? mockAuthenticationFirestore;
  MockNetworkInfo? mockNetworkInfo;

  setUp(() {
    mockAuthenticationFirestore = MockAuthenticationFirestore();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = AuthenticationRepositoryImpl(
        authenticationFirestore: mockAuthenticationFirestore,
        networkInfo: mockNetworkInfo);
  });

  group('test firebase Authentication', () {
    const UserEntryModel userEntryModel = UserEntryModel(
        email: "email", password: "password", returnSecureToken: true);
    const UserEntry userEntry = userEntryModel;
    test('should check if the device has internet connection for signUp',
        () async {
      when(mockNetworkInfo!.isConnected).thenAnswer((_) async => true);
      repositoryImpl!.signUp(userEntry);
      verify(mockNetworkInfo!.isConnected);
    });
    test('should check if the device has internet connection for logIn',
        () async {
      when(mockNetworkInfo!.isConnected).thenAnswer((_) async => true);
      repositoryImpl!.logIn(userEntry);
      verify(mockNetworkInfo!.isConnected);
    });
  });
}
