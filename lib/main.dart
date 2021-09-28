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

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'Us'),
      fallbackLocale: Locale('en', 'Us'),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 25, color: Colors.purpleAccent),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {
                  myController.changeLanguage('bn','');
                },
                child: Text("Bangla"),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {
                  myController.changeLanguage('en','US');
                },
                child: Text("English"),
              ),SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {
                  myController.changeLanguage('fr','FR');
                },
                child: Text("France"),
              ),SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
