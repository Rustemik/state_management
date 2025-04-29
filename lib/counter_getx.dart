import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/models/counter_controller.dart';

class CounterGetx extends StatelessWidget {
  final controller = Get.put(CounterController());

  CounterGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GetBuilder<CounterController>(
          builder: (controller) => Text('GetX Counter ${controller.count}'),
        ),
        SizedBox(width: 5),
        OutlinedButton(
          child: Text('inc'),
          onPressed: () {
            controller.inc();
          },
        ),
      ],
    );
  }
}
