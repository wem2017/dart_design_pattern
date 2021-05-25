import 'package:flutter_app/abstract_factory/component.dart';
import 'package:flutter_app/abstract_factory/cupertino.dart';
import 'package:flutter_app/abstract_factory/material.dart';

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
