import 'package:get/get.dart';
import 'package:getx_flutter/HomeController.dart';
import 'package:getx_flutter/my_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
