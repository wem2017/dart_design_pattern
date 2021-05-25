import 'package:flutter_app/prototype/rectangle.dart';

class Client {
  void makePrototype() {
    final ogRect = Rectangle(
      x: 0,
      y: 0,
      width: 100,
      height: 100,
    );
    final cloneRect = ogRect.clone();
  }
}
