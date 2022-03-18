import 'package:calculator/controller/home_controller.dart';
import 'package:get/get.dart';

class CommonController extends GetxController {
  CommonController();

  final _isTouchButtonMap = {
    'C': false,
    '( )': false,
    '%': false,
    '÷': false,
    '7': false,
    '8': false,
    '9': false,
    'x': false,
    '4': false,
    '5': false,
    '6': false,
    '-': false,
    '1': false,
    '2': false,
    '3': false,
    '+': false,
    '+/-': false,
    '0': false,
    '.': false,
    '=': false,
  }.obs;
  get isTouchButtonMap => _isTouchButtonMap;
  set isTouchButtonMap(value) => _isTouchButtonMap.value = value;

  void touch(String buttonName) {
    calculate(buttonName);
    isTouchButtonMap[buttonName] = true;
    update();
  }

  void touchEnd(String buttonName) {
    isTouchButtonMap[buttonName] = false;
    update();
  }

  void calculate(String buttonName) {
    var stringController = Get.find<HomeController>().stringController;

    // 숫자
    if (buttonName.isNumericOnly) {
      stringController.text += buttonName;
    }
    // 점
    else if (buttonName == '.') {
      if (stringController.text.isEmpty) {
        stringController.text = '0.';
      } else {
        stringController.text += '.';
      }
    }
    // 그 외
    else {
      switch (buttonName) {
        case 'C':
          stringController.clear();
          break;
        case '( )':
          print('따로 처리');
          break;
        case '+/-':
          print('얘도 따로 처리');
          break;
        case '=':
          print('따로 처리');
          break;
        default:
          var lastString =
              stringController.text.substring(stringController.text.length - 1);

          if (lastString.isNumericOnly || lastString == '.') {
            stringController.text += buttonName;
          } else {
            stringController.text = stringController.text.replaceRange(
                stringController.text.length - 1, null, buttonName);
          }
      }
      print('숫자도 점도 아님');
    }
  }
}
