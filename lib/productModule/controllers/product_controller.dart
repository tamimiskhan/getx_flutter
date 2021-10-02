import 'package:get/get.dart';
import 'package:getx_flutter/apimodule/api_service.dart';
import 'package:getx_flutter/productModule/models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;

  var productList = <ProductModel>[].obs;
 // var productList = List<ProductModel>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();

      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}

