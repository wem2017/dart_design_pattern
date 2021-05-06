import 'package:flutter_app/abstract_factory/button.dart';
import 'package:flutter_app/abstract_factory/checkbox.dart';
import 'package:flutter_app/abstract_factory/component.dart';

class MaterialStyle implements Component {
  @override
  Button createButton() {
    return MaterialButton();
  }

  @override
  CheckBox createCheckBox() {
    return MaterialCheckBox();
  }
}
