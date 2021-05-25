import 'package:flutter_app/prototype/shape.dart';

class Rectangle implements Shape {
  late int x;
  late int y;
  late int width;
  late int height;
  late bool isClone;
  late int _hashCode;

  Rectangle({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.isClone = false,
  });

  Rectangle.fromSource(Rectangle source) {
    width = source.width;
    height = source.height;
    x = source.x;
    y = source.y;
    isClone = true;
  }

  @override
  Shape clone() {
    return Rectangle.fromSource(this);
  }

  @override
  int get hashCode {
    return _hashCode;
  }

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    return other.isClone && other.hashCode == hashCode;
  }
}
