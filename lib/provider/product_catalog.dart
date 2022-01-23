import 'package:flutter/foundation.dart';

import 'package:aigaki_app/dummy_data/dummy_products.dart';
import 'package:aigaki_app/model/product.dart';

class ProductCatalog with ChangeNotifier {
  List<Product> _productList = [...dummyProducts];

  List<Product> get productList => [..._productList];

  Product? getProductById(int id) {
    return _productList.firstWhere((element) => element.id == id);
  }

// TODO remove later, it's here just for testing
  void removeProductById(int id) {
    _productList.removeWhere((element) => element.id == id);
    notifyListeners();
  }

// TODO remove later, it's here just for testing
  void resetProduct() {
    _productList = [...dummyProducts];
    notifyListeners();
  }
}
