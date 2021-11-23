import 'dart:convert';
import 'package:covinfo/models/diagnosisModel.dart';
import 'package:http/http.dart' as http;

class DiagnosisService {
  static const url = 'https://covinfo-api.herokuapp.com/diagnoses';
  static const headers = {"content-type": "application/json"};

  Future<DiagnosisModel> postDiagnosis(DiagnosisModel diagnosis) async {
    var diagnosisModel = new DiagnosisModel();

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
