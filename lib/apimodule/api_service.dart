import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_flutter/productModule/models/product_model.dart';
import 'package:http/http.dart' as http;

// class ApiService {
//   static var client = http.Client();
//
//   static Future<List<ProductModel>> fetchProducts () async{
//
//     var response = await client.get(
//         'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie');
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//
//       return productFromJson(jsonString);
//     }
//
//   }
// }

class ApiService
{
  static var client = http.Client();

  static FutureOr<List<ProductModel>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'));
    var jsonString;
    if (response.statusCode == 200) {
      jsonString = response.body;
      return productFromJson(jsonString);
    }
    return productFromJson(jsonString);
  }
}