class Config {
  static final _singleton = Config._internal();

  factory Config() {
    return _singleton;
  }

  Config._internal();
}
