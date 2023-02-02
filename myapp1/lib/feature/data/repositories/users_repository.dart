import 'package:dio/dio.dart';
//import 'package:flutter/material.dart';
import 'package:myapp1/feature/data/models/users_model.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class UserRepository {
  static Future getUsersList() async {
    try {
      final res = await Dio().get('https://gorest.co.in/public/v2/users');
      print(res);
      return res.data
          .map<User_Model>((json) => User_Model.fromJson(json))
          .toList();
    } catch (e) {
      print("$e");
    }
  }
}

// class UserRepository {
//   static Future<List<User_Model>> getUsersList() async {
//     final String url = 'https://gorest.co.in/public/v2/users';
//     final res = await http.get(Uri.parse(url));
//
//     if (res.statusCode == 200) {
//       List<User_Model> body = jsonDecode(res.body).toList();
//       return body
//           .map<User_Model>(
//               (json) => User_Model.fromJson(json as Map<String, dynamic>))
//           .toList();
//     } else {
//       throw 'Unable to retrieve posts.';
//     }
//   }
// }
