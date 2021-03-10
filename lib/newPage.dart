import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_demo/statecontroller.dart';

class NewPage extends StatelessWidget {
  final StateDemo stateDemo = Get.find();
  @override
  Widget build(BuildContext context) {
    print("New Page Build");
    return Scaffold(
      body: Center(
        child: Text('${stateDemo.count}'),
      ),
    );
  }
}
