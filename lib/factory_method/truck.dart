import 'transport.dart';

class Truck implements Transport {
  @override
  String deliver() {
    return "deliver by Truck";
  }
}
