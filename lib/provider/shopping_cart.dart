import 'package:flutter/widgets.dart';
import 'package:ss_mann/model/shopping_cart_item.dart';

class ShoppingCart with ChangeNotifier {
  final List<ShoppingCartItem> _items = [];

  List<ShoppingCartItem> get items {
    return [..._items];
  }

  void addItemToCart(int id) {
    _items.add(ShoppingCartItem.fromId(id));
    notifyListeners();
  }

  void removeItemFromCart(int id) {
    _items.removeWhere((element) => element.productId == id);
    notifyListeners();
  }

  bool isItemInCart(int id) {
    return _items.any((element) => element.productId == id);
  }

// TODO
  void incrementItemQuantity(int id) {}

// TODO
  void decrementItemQuantity(int id) {}
}
