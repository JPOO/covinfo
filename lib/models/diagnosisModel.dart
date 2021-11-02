class DiagnosisModel {
  String? id;
  String? idUser;
  String? riskFactors;
  String? symptoms;
  String? afterEffects;

  DiagnosisModel(
      {this.id,
      this.idUser,
      this.riskFactors,
      this.symptoms,
      this.afterEffects});

  factory DiagnosisModel.fromJson(Map<String, dynamic> json) => DiagnosisModel(
      id: json['_id'],
      idUser: json['idUser'],
      riskFactors: json['risk_factors'],
      symptoms: json['symtoms'],
      afterEffects: json['after_effects']);

  Map<String, dynamic> toJson() => {
        '_id': id,
        'idUser': idUser,
        'riskFactors': riskFactors,
        'symtoms': symptoms,
        'afterEffects': afterEffects
      };
}
