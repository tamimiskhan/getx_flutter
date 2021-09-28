import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//If init property us not used Getx<Type of controller > then
//create the instance of controller as follow

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique id",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Unique id"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  myController.increment();
                },
                child: Text("Increment"),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: (val) {
                    myController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
