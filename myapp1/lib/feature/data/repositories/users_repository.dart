import 'package:dio/dio.dart';
import 'package:myapp1/feature/data/models/users_model.dart';

class UserRepository {
  static Future getUsersList() async {
    try {
      final res = await Dio().get('https://gorest.co.in/public/v2/users');

      return res.data
          .map<User_Model>((json) => User_Model.fromJson(json))
          .toList();
    } catch (e) {
      print("$e");
    }
  }
}
