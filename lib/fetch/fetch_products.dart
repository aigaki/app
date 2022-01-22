import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ss_mann/const/api_urls.dart';
import 'package:ss_mann/model/product.dart';

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse(productsApiUrl));
  final jsonList = jsonDecode(response.body) as List;

  List<Product> products =
      jsonList.map((element) => Product.fromJson(element)).toList();
  return products;
}
