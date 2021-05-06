import 'bike.dart';
import 'logistic.dart';
import 'transport.dart';

class Road implements Logistic {
  @override
  Transport createTransport(String? params) {
    switch (params) {
      default:
        return Bike();
    }
  }
}
