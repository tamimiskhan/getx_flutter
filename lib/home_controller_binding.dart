import 'package:get/get.dart';
import 'package:getx_flutter/HomeController.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {

    Get.lazyPut<HomeController>(() => HomeController());
  }
}
