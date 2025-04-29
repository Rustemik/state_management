import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/models/counter_controller.dart';

class CounterGetxRx extends StatelessWidget {
  final controller = Get.put(CounterController());

  CounterGetxRx({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(() => Text('GetX Rx Counter ${controller.countRx}')),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            controller.incRx();
          },
        ),
      ],
    );
  }
}
