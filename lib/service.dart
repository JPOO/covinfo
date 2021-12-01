class MyService {
  static final MyService _instance = MyService._internal();

  factory MyService() => _instance;

  MyService._internal() {
    _idUser = _local = '';
  }

  late String _idUser;

  String get idUser => _idUser;

  set idUser(String value) => _idUser = value;

  void addIdUser(String value) => _idUser = value;

  late String _local;

  String get local => _local;

  set local(String value) => _local = value;

  void addLocal(String value) => _local = value;
}
