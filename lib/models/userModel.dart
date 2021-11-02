class UserModel {
  String? id;
  int? age;
  String? gender;
  String? race;
  String? bloodType;
  double? height;
  double? weight;
  String? physicalActivities;
  String? medicines;
  String? local;
  DateTime? diagnosisDate;

  UserModel(
      {this.id,
      this.age,
      this.gender,
      this.race,
      this.bloodType,
      this.height,
      this.weight,
      this.physicalActivities,
      this.medicines,
      this.local,
      this.diagnosisDate});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['_id'],
      age: json['age'],
      gender: json['gender'],
      race: json['race'],
      bloodType: json['bloodType'],
      height: json['height'],
      weight: json['weight'],
      medicines: json['medicines'],
      physicalActivities: json['physicalActivities'],
      local: json['local'],
      diagnosisDate: json['diagnosisDate']);

  Map<String, dynamic> toJson() => {
        '_id': id,
        'age': age,
        'gender': gender,
        'race': race,
        'bloodType': bloodType,
        'height': height,
        'weight': weight,
        'medicines': medicines,
        'physicalActivities': physicalActivities,
        'local': local,
        'diagnosisDate': diagnosisDate
      };
}
