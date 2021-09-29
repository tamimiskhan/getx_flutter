import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/HomeController.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${Get.find<HomeController>().count}',
                style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
              ),
            ),
            RaisedButton(
              onPressed: () {
                //  Get.toNamed("/nextScreen");
                Get.find<HomeController>().increment();
              },
              child: Text(
                "Increment",
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
              onLongPress: () {},
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Back",
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
