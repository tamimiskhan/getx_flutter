import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'student.dart';

class MyController extends GetxController{
 // var student=Student();
  var student=Student(name: "Tamim",age: 24).obs;

  void convertToUpperCase(){

   // student.name.value=student.name.value.toUpperCase();

    student.update((student) {
      student.name=student.name.toString().toUpperCase();
    });
  }


}