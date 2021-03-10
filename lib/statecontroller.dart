import 'dart:developer';

import 'package:get/get.dart';

class StateDemo extends GetxController {
  var counter = 0.obs;
  int get count => counter.abs();

  increment() {
    counter = counter + 1;
  }
}
