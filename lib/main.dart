import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetStorage & Email Validation",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get Storage & Email Validation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write("email", emailEditingController.text);
                    } else {
                      Get.snackbar(
                          "Incorrect Email", "Provide Email in valid format",
                          colorText: Colors.white,
                          backgroundColor: Colors.red,
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                  child: Text("Write"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              RaisedButton(
                onPressed: () {
                  print("The Email is ${storage.read("email")}");
                },
                child: Text("Read"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
