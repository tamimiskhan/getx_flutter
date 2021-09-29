import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/Messages.dart';
import 'package:getx_flutter/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//If init property us not used Getx<Type of controller > then
//create the instance of controller as follow





  @override
  Widget build(BuildContext context) {


// MyController myController = Get.put(MyController(), permanent: true);


  //  Get.lazyPut(() => MyController(),tag: 'instance2',fenix: true);
    
   // Get.create<MyController>(() => MyController());

    Get.putAsync<MyController>(() async=> await MyController());
    return GetMaterialApp(
      title: "Dependancy Injection",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dependancy Injection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              RaisedButton(
                onPressed: () {
               // Get.find<MyController>(tag: 'instance1');
                Get.find<MyController>();

                Get.find<MyController>().incrementCounter();
                },
                child: Text("Clcik me"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
