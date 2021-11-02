import 'dart:convert';
import 'package:covinfo/models/userModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const url = 'http://10.0.2.2:3000/users';
  static const headers = {"content-type": "application/json"};

  // Future<UserModel> getUsers() async {
  //   var client = http.Client();

  //   var user = null;

  //   try {
  //     var response = await client.get(Uri.parse(url));

  //     print(response);
  //     if (response.statusCode == 200) {
  //       var jsonUser = response.body;
  //       var jsonMap = json.decode(jsonUser);

  //       // user = User.fromJson(jsonMap);
  //     }
  //   } catch (Exception) {
  //     return user;
  //   }

  //   return user;
  // }

  Future<UserModel> postUser(UserModel user) async {
    var userModel = null;

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
