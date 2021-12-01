import 'dart:convert';
import 'package:covinfo/auth/secrets.dart';
import 'package:covinfo/models/diagnosisModel.dart';
import 'package:http/http.dart' as http;

class DiagnosisService {
  static const url = 'http://10.0.2.2:3000/diagnoses';

  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$apiUser:$apiPassword'));

  Future<DiagnosisModel> postDiagnosis(DiagnosisModel diagnosis) async {
    var diagnosisModel = new DiagnosisModel();

    try {
      final response = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Authorization': basicAuth
          },
          body: json.encode(diagnosis.toJson()));

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
