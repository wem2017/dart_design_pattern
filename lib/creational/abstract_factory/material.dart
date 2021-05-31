import 'button.dart';
import 'checkbox.dart';
import 'component.dart';

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
