import 'transport.dart';

abstract class Logistic {
  Transport createTransport(String? params);
}
