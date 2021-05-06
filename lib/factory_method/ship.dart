import 'transport.dart';

class Ship implements Transport {
  @override
  String deliver() {
    return "deliver by Ship";
  }
}
