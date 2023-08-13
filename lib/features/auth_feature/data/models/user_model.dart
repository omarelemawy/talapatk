import '../../domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    super.email,
    required super.mobile,
    required super.image,
    required super.type,
    this.token,
  });

  final String? token;

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      type: json['type'],
      image: json['image'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'mobile': mobile,
        'type': type,
        'image': image,
      };
}
