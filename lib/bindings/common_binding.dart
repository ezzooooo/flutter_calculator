import 'package:calculator/controller/common_controller.dart';
import 'package:get/get.dart';

class CommonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonController>(() {
      return CommonController();
    });
  }
}
