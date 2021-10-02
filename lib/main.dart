import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/commonModule/AppColor.dart';
import 'package:getx_flutter/home.dart';
import 'package:getx_flutter/home_controller_binding.dart';
import 'package:getx_flutter/my_controller.dart';
import 'package:getx_flutter/myapp_controller_binding.dart';
import 'package:getx_flutter/productModule/views/product_list_view.dart';

import 'commonModule/AppString.dart';

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
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,

      ) ,
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
