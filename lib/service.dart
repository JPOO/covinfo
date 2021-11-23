class MyService {
  static final MyService _instance = MyService._internal();

  factory MyService() => _instance;

  MyService._internal() {
    _idUser = '';
  }

  late String _idUser;

  String get idUser => _idUser;

  set idUser(String value) => _idUser = value;

  void addIdUser(String value) => _idUser = value;
}
