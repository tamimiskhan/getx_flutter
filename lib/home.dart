import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Text(
              "This is home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Next Screen",
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
                Get.back(result: 'This is from Home Screen');
              },
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
