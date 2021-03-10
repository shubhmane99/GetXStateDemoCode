import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'newPage.dart';
import 'statecontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final StateDemo stateDemo = Get.put(StateDemo());
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Main Page Build");
    return Scaffold(body: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final StateDemo stateDemo = Get.put(StateDemo());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetX<StateDemo>(builder: (controller) {
              return Text('${controller.count}');
            }),
          ),
          Center(
            child: RaisedButton(
              onPressed: () => stateDemo.increment(),
              child: Text('increment'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Get.to(NewPage());
            },
            child: Text('move to newPage'),
          ),
        ],
      ),
    );
  }
}
