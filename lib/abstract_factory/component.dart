import 'button.dart';
import 'checkbox.dart';

abstract class Component {
  Button createButton();
  CheckBox createCheckBox();
}
