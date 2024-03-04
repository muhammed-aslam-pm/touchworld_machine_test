import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:touchworld_machine_test/model/product_model.dart';
import 'package:touchworld_machine_test/utils/api_endpoind.dart';
import 'package:http/http.dart' as http;

class ProductController with ChangeNotifier {
  List<Datum> products = [];

  fetchProducts() async {
    try {
      final url = Uri.parse(ApiEndPoind.baseUrl);
      var respons = await http.get(url);
      if (respons.statusCode == 200) {
        var decodedData = json.decode(respons.body);

        ProductModel productRespones = ProductModel.fromJson(decodedData);
        products = productRespones.data!;
        notifyListeners();
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
