import '../../domain/entities/user_entry.dart';

class UserEntryModel extends UserEntry {
  const UserEntryModel(
      {required super.email,
      required super.password,
      required super.returnSecureToken});
}
