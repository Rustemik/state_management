import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt countRx = 0.obs;

  int count = 0;

  void inc() {
    count++;
    update();
  }

  void incRx() {
    countRx++;
  }
}
