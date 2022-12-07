import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:login_app/features/authentication/data/models/user_output_model.dart';
import 'package:login_app/features/authentication/domain/entities/user_output.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tUserOutputModelFromLogIn = UserOutputModel(
      kind: "kind",
      localId: "localId",
      displayName: "displayName",
      idToken: "idToken",
      registered: true,
      refreshToken: "refreshToken",
      expiresIn: "expiresIn",
      email: "email");
  const tUserOutputModelFromRegister = UserOutputModel(
      kind: "kind",
      localId: "localId",
      idToken: "idToken",
      refreshToken: "refreshToken",
      expiresIn: "expiresIn",
      email: "email");
  test('should be a sublcass of UserEntry entity', () async {
    expect(tUserOutputModelFromLogIn, isA<UserOutput>());
  });
  group('fromJson ', () {
    test('should return valid model When userEntry is valid and from login',
        () async {
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('user_output_login.json'));

      final result = UserOutputModel.fromJson(jsonMap);
      expect(result, equals(tUserOutputModelFromLogIn));
    });

    test('should return valid model When userEntry is valid and login',
        () async {
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('user_output_register.json'));

      final result = UserOutputModel.fromJson(jsonMap);
      expect(result, equals(tUserOutputModelFromRegister));
    });
  });
}
