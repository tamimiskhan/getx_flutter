import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Name is ${myController.student.value.name}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              RaisedButton(
                child: Text("Upper"),
                onPressed: () {
                  myController.convertToUpperCase();

                  //  student.name.value = student.name.value.toUpperCase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
