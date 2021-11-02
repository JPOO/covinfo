import 'dart:convert';
import 'package:covinfo/models/diagnosisModel.dart';
import 'package:http/http.dart' as http;

class DiagnosisService {
  static const url = 'http://10.0.2.2:3000/diagnoses';
  static const headers = {"content-type": "application/json"};

  Future<DiagnosisModel> postUser(DiagnosisModel diagnosis) async {
    var diagnosisModel = null;

    try {
      final response = await http.post(Uri.parse(url),
          headers: headers, body: json.encode(diagnosis.toJson()));

      if (response.statusCode == 201) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        diagnosisModel = DiagnosisModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return diagnosisModel;
    }

    return diagnosisModel;
  }
}
