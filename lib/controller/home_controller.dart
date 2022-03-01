import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  HomeController();

  final stringController = TextEditingController();

  final _appBarTitle = '일반계산기'.obs;
  get appBarTitle => _appBarTitle.value;
  set appBarTitle(value) => _appBarTitle.value = value;

  final _result = ''.obs;
  get result => _result.value;
  set result(value) => _result.value = value;

  @override
  void onInit() {
    stringController.addListener(() {
      print(stringController.text);
      result = stringController.text;
    });
    super.onInit();
  }

  @override
  void onClose() {
    stringController.dispose();
    super.onClose();
  }
}
