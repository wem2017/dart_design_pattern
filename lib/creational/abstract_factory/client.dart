import 'component.dart';
import 'cupertino.dart';
import 'material.dart';

class Client {
  ///Make Material style
  void makeMaterialStyle() {
    Component component = MaterialStyle();
    final button = component.createButton();
    final checkbox = component.createCheckBox();
  }

  ///Make Cupertino style
  void makeCupertinoStyle() {
    Component component = CupertinoStyle();
    final button = component.createButton();
    final checkbox = component.createCheckBox();
  }
}
