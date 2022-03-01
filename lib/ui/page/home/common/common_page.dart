import 'package:calculator/controller/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: GetX<CommonController>(
          builder: (_) => Column(
            children: const [
              Text('일반계산기 페이지'),
            ],
          ),
        ),
      ),
    );
  }
}
