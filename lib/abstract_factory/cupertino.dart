import 'package:flutter_app/abstract_factory/button.dart';
import 'package:flutter_app/abstract_factory/checkbox.dart';
import 'package:flutter_app/abstract_factory/component.dart';

class CupertinoStyle implements Component {
  @override
  Button createButton() {
    return CupertinoButton();
  }

  @override
  CheckBox createCheckBox() {
    return CupertinoCheckBox();
  }
}
