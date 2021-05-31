import 'button.dart';
import 'checkbox.dart';
import 'component.dart';

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
