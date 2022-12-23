import 'package:get/state_manager.dart';

class CleintHomeController extends GetxController {
  RxInt counter = 0.obs;

  increment() {
    counter++;
  }
}
