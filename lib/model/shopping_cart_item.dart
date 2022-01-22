class ShoppingCartItem {
  final int productId;
  late final int quantity;

  ShoppingCartItem({
    required this.productId,
    required this.quantity,
  });

  ShoppingCartItem.fromId(final this.productId) {
    quantity = 1;
  }
}
