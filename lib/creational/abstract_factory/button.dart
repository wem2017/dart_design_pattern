abstract class Button {
  String paint();
}

class MaterialButton implements Button {
  @override
  String paint() {
    return "paint Material Button style";
  }
}

class CupertinoButton implements Button {
  @override
  String paint() {
    return "paint Cupertino Button style";
  }
}
