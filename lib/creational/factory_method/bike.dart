import 'transport.dart';

class Bike implements Transport {
  @override
  String deliver() {
    return "deliver by Bike";
  }
}
