import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String? email;
  final String mobile;
  final String image;
  final String type;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.image,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        mobile,
        image,
        type,
      ];
}
