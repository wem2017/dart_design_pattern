import 'logistic.dart';
import 'ship.dart';
import 'transport.dart';

class Sea implements Logistic {
  @override
  Transport createTransport(String? params) {
    switch (params) {
      default:
        return Ship();
    }
  }
}
