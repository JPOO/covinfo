import 'dart:convert';
import 'package:covinfo/models/userModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const url = 'https://covinfo-api.herokuapp.com/users';
  static const headers = {"content-type": "application/json"};

  Future<UserModel> postUser(UserModel user) async {
    var userModel = new UserModel();

    try {
      final response = await http.post(Uri.parse(url),
          headers: headers, body: json.encode(user.toJson()));

      if (response.statusCode == 201) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        userModel = UserModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return userModel;
    }

    return userModel;
  }
}
