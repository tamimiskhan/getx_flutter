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
              GetBuilder<MyController>(
                id: 'txtCount',
                //   initState: (data)=>myController.increment(),
                //  dispose: (_)=>myController.cleanUpTask(),

                builder: (controller) {
                  return Text("The value is ${controller.count}",
                      style: TextStyle(fontSize: 25));
                },
              ),
              GetBuilder<MyController>(

                //   initState: (data)=>myController.increment(),
                //  dispose: (_)=>myController.cleanUpTask(),

                builder: (controller) {
                  return Text("The value is ${controller.count}",
                      style: TextStyle(fontSize: 25));
                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {
                  // myController.increment();

                  //If instance of controller not create at top
                  Get.find<MyController>().increment();
                },
                child: Text("Increment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
