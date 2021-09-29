import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/my_controller.dart';
import 'package:getx_flutter/service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('starting service ...');
  await Get.putAsync<Service>(() async => await Service());
  print('All service started..');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.putAsync<MyController>(() async => await MyController());
    return GetMaterialApp(
      title: "GetX Service",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  // Get.find<MyController>(tag: 'instance1');
                  // Get.find<MyController>();

                  Get.find<Service>().incrementCounter();
                },
                child: Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
