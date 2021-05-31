abstract class Shape {
  int x;
  int y;
  bool isClone;

  Shape({
    required this.x,
    required this.y,
    this.isClone = false,
  });

  Shape clone();
}
