import 'package:calculator/controller/common_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalCulatorButton extends StatelessWidget {
  const CalCulatorButton(
    this.buttonName, {
    Key? key,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.black12,
    this.touchColor = Colors.black26,
  }) : super(key: key);

  final String buttonName;
  final Color textColor;
  final Color backgroundColor;
  final Color touchColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommonController>(
      builder: (_) => GestureDetector(
        onTap: () {
          _.touch(buttonName);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:
                _.isTouchButtonMap[buttonName] ? touchColor : backgroundColor,
            borderRadius: BorderRadius.circular(999),
          ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              child: Text(
                buttonName,
              ),
              style: TextStyle(
                  color: textColor,
                  fontSize: _.isTouchButtonMap[buttonName] ? 18 : 24),
              duration: const Duration(milliseconds: 100),
            ),
          ),
          onEnd: () {
            _.touchEnd(buttonName);
          },
        ),
      ),
    );
  }
}
