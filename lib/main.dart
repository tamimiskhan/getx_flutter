import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/home.dart';
import 'package:getx_flutter/home_controller_binding.dart';
import 'package:getx_flutter/my_controller.dart';
import 'package:getx_flutter/myapp_controller_binding.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.putAsync<MyController>(() async => await MyController());
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      title: "Binding",

      //If binding applied at route level
      // getPages: [
      //   GetPage(
      //     name: '/home',
      //     page: () => Home(),
      //     binding: HomeControllerBinding(),
      //   ),
      // ],
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: BindingsBuilder(
            () => {
              Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding())
            },
          ),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<MyController>().count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text("Increment"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  // Get.to(Home());
                  Get.toNamed('/home');

                  //for normal routes
                  Get.to(Home(), binding: HomeControllerBinding());
                },
                child: Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
