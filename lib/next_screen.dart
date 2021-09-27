import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Scrren"),
      ),
      body: Center(
        child:

            // Text(
            //   "This is next Screen",
            //   style: TextStyle(
            //     color: Colors.red,
            //     fontSize: 30,
            //   ),
            // ),
            Text(
          "${Get.parameters['somevalue']}",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
