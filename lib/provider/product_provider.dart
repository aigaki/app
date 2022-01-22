import 'package:flutter/foundation.dart';

import 'package:ss_mann/dummy_data/dummy_products.dart';
import 'package:ss_mann/model/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _productList = [...dummyProducts];

  List<Product> get productList => [..._productList];

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
