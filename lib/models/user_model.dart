// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
    );
  }
}

List<UserModel> userList = [];
