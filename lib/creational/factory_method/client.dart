import 'logistic.dart';
import 'road.dart';
import 'sea.dart';

class Client {
  void createTransport() {
    Logistic logistic = Road();
    final objectOfRoad = logistic.createTransport();
    logistic = Sea();
    final objectOfSea = logistic.createTransport();
  }
}
