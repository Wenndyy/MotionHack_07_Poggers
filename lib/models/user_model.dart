import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String username;
  final String email;

  final int saldo;

  const UserModel({
    required this.id,
    required this.username,
    required this.email,
    this.saldo = 0,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        email,
        saldo,
      ];
}
