import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  // var student=Student();

  final student = Student(name: 'tom', age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                    () =>
                    Text(
                      "Name is ${student.value.name}",
                      style: TextStyle(fontSize: 25),
                    ),
              ),
              RaisedButton(
                child: Text("Upper"),
                onPressed: () {
                  increment();

                  student.update((student) {
                    student!.name = student?.name.toString().toUpperCase();
                  });

                  //  student.name.value = student.name.value.toUpperCase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
