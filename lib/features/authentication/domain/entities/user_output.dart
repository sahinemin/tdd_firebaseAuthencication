import 'package:equatable/equatable.dart';

class UserOutput extends Equatable {
  final String kind;
  final String localId;
  final String email;
  final String? displayName;
  final String idToken;
  final bool? registered;
  final String refreshToken;
  final String expiresIn;

  const UserOutput({
    required this.kind,
    required this.localId,
    this.displayName,
    required this.idToken,
    this.registered,
    required this.refreshToken,
    required this.expiresIn,
    required this.email,
  });

  @override
  List<Object?> get props => [
        kind,
        localId,
        displayName,
        idToken,
        registered,
        refreshToken,
        expiresIn,
        email
      ];
}
