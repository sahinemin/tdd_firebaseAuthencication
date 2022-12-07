import 'package:flutter_test/flutter_test.dart';
import 'package:login_app/features/authentication/data/models/user_entry_model.dart';
import 'package:login_app/features/authentication/domain/entities/user_entry.dart';

void main() {
  const tUserEntryModel = UserEntryModel(
      email: 'email', password: 'password', returnSecureToken: true);
  test('should be a sublcass of UserEntry entity', () async {
    expect(tUserEntryModel, isA<UserEntry>());
  });
}
