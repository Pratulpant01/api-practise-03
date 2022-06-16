import 'dart:convert';

import 'package:apitutorial/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUsers() async {
    final String url = 'https://jsonplaceholder.typicode.com/users';
    var response = await http.get(Uri.parse(url));
    List<dynamic> data = [];

    data = jsonDecode(response.body);
    for (int i = 0; i < data.length; i++) {
      if (data[i] != null) {
        Map<String, dynamic> map = data[i];
        userList.add(UserModel.fromJson(map));
      }
    }
    return userList;
  }
}

// if (response.statusCode == 200) {
//       List data = [];
//       data = jsonDecode(response.body).fromEach((element) {
//         Map<String, dynamic> map = data[element];
//         userList.add(UserModel.fromJson(map));
//       });
//     }

// List<UserModel> userList = [];
// Future<List<UserModel>> getUsers() async {
//   final String url = 'https://jsonplaceholder.typicode.com/users';
//   var response = await http.get(Uri.parse(url));
//   var data = jsonDecode(response.body);
//   data.forEach((element) {
//     UserModel userModel = UserModel(
//       id: element['id'],
//       name: element['name'],
//       username: element['username'],
//       email: element['email'],
//       phone: element['phone'],
//       website: element['website'],
//     );
//     userList.add(userModel);
//   });
//   return userList;
// }
