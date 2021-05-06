abstract class CheckBox {
  String paint();
}

class MaterialCheckBox implements CheckBox {
  @override
  String paint() {
    return "paint Material CheckBox style";
  }
}

class CupertinoCheckBox implements CheckBox {
  @override
  String paint() {
    return "paint Cupertino CheckBox style";
  }
}
