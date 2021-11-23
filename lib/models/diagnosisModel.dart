class DiagnosisModel {
  String? id;
  String? idUser;
  String? riskFactors;
  DateTime? symptomsOnsetDate;
  DateTime? symptomsEndDate;
  String? symptoms;
  String? afterEffects;

  DiagnosisModel(
      {this.id,
      this.idUser,
      this.riskFactors,
      this.symptomsOnsetDate,
      this.symptomsEndDate,
      this.symptoms,
      this.afterEffects});

  factory DiagnosisModel.fromJson(Map<String, dynamic> json) => DiagnosisModel(
      id: json['_id'],
      idUser: json['idUser'],
      riskFactors: json['risk_factors'],
      symptomsOnsetDate: json['symptomsOnsetDate'],
      symptomsEndDate: json['symptomsEndDate'],
      symptoms: json['symtoms'],
      afterEffects: json['after_effects']);

  Map<String, dynamic> toJson() => {
        '_id': id,
        'idUser': idUser,
        'riskFactors': riskFactors,
        'symptomsOnsetDate': symptomsOnsetDate,
        'symptomsEndDate': symptomsEndDate,
        'symtoms': symptoms,
        'afterEffects': afterEffects
      };
}
