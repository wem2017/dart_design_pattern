import 'package:flutter_app/factory_method/logistic.dart';
import 'package:flutter_app/factory_method/road.dart';
import 'package:flutter_app/factory_method/sea.dart';

class Client {
  void createTransport() {
    Logistic logistic = Road();
    final objectOfRoad = logistic.createTransport();
    logistic = Sea();
    final objectOfSea = logistic.createTransport();
  }
}
