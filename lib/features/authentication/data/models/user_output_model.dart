import '../../domain/entities/user_output.dart';

class UserOutputModel extends UserOutput {
  const UserOutputModel(
      {required super.kind,
      required super.localId,
      super.displayName,
      required super.idToken,
      super.registered,
      required super.refreshToken,
      required super.expiresIn,
      required super.email});

  factory UserOutputModel.fromJson(Map<String, dynamic> json) {
    return UserOutputModel(
        kind: json['kind'],
        localId: json['localId'],
        displayName: json['displayName'],
        idToken: json['idToken'],
        registered: json['registered'],
        refreshToken: json['refreshToken'],
        expiresIn: json['expiresIn'],
        email: json['email']);
  }
}
