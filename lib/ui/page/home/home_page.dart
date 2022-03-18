import 'package:calculator/controller/home_controller.dart';
import 'package:calculator/ui/page/home/widget/calculator_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.stringController,
              keyboardType: TextInputType.none,
              minLines: 1,
              maxLines: 4,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GetX<HomeController>(
                  builder: (_) => Text(_.result),
                ),
              ],
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CalCulatorButton('C', textColor: Colors.red),
                      CalCulatorButton('( )', textColor: Colors.green),
                      CalCulatorButton('%', textColor: Colors.green),
                      CalCulatorButton('÷', textColor: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CalCulatorButton('7'),
                      CalCulatorButton('8'),
                      CalCulatorButton('9'),
                      CalCulatorButton('x', textColor: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CalCulatorButton('4'),
                      CalCulatorButton('5'),
                      CalCulatorButton('6'),
                      CalCulatorButton('-', textColor: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CalCulatorButton('1'),
                      CalCulatorButton('2'),
                      CalCulatorButton('3'),
                      CalCulatorButton('+', textColor: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CalCulatorButton('+/-'),
                      CalCulatorButton('0'),
                      CalCulatorButton('.'),
                      CalCulatorButton(
                        '=',
                        textColor: Colors.white,
                        backgroundColor: Colors.green,
                        touchColor: Colors.lightGreen,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
