// lib/models/cart_item.dart

class CartItem {
  final String id;
  final String productId; // The product this cart item refers to
  final String name;
  final double price;
  int quantity;
  final String imageUrl;

  CartItem({
    required this.id,
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageUrl,
  });

  // JSON serialization
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'] as String,
      productId: json['productId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'productId': productId,
    'name': name,
    'price': price,
    'quantity': quantity,
    'imageUrl': imageUrl,
  };
}
