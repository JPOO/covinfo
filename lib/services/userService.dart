import 'dart:convert';
import 'package:covinfo/auth/secrets.dart';
import 'package:covinfo/models/userModel.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const url = 'http://10.0.2.2:3000/users';

  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$apiUser:$apiPassword'));

  Future<UserModel> postUser(UserModel user) async {
    var userModel = new UserModel();

    try {
      final response = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Authorization': basicAuth
          },
          body: json.encode(user.toJson()));

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
