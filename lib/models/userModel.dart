class UserModel {
  String? id;
  int? age;
  String? gender;
  String? race;
  String? bloodType;
  double? weight;
  double? height;
  String? medicines;
  String? physicalActivities;
  String? vaccineType;
  String? vaccineDose;
  DateTime? vaccineDate;
  String? local;
  String? type;
  DateTime? date;

  UserModel(
      {this.id,
      this.age,
      this.gender,
      this.race,
      this.bloodType,
      this.weight,
      this.height,
      this.medicines,
      this.physicalActivities,
      this.vaccineType,
      this.vaccineDose,
      this.vaccineDate,
      this.local,
      this.type,
      this.date});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['_id'],
      age: json['age'],
      gender: json['gender'],
      race: json['race'],
      bloodType: json['bloodType'],
      weight: json['weight'],
      height: json['height'],
      medicines: json['medicines'],
      physicalActivities: json['physicalActivities'],
      vaccineType: json['vacineType'],
      vaccineDose: json['vaccineDose'],
      vaccineDate: json['vaccineDate'],
      local: json['local'],
      type: json['type'],
      date: json['date']);

  Map<String, dynamic> toJson() => {
        '_id': id,
        'age': age,
        'gender': gender,
        'race': race,
        'bloodType': bloodType,
        'weight': weight,
        'height': height,
        'medicines': medicines,
        'physicalActivities': physicalActivities,
        'vaccineType': vaccineType,
        'vaccineDose': vaccineDose,
        'vaccineDate': vaccineDate,
        'local': local,
        'type': type,
        'date': date
      };
}
