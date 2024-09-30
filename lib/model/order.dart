class Order {
  final String orderId;
  final String userId;
  final List<OrderProduct> products;
  final double totalPrice;
  final DateTime date;
  final String status;

  Order({
    required this.orderId,
    required this.userId,
    required this.products,
    required this.totalPrice,
    required this.date,
    required this.status,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      orderId: json['orderId'],
      userId: json['userId'],
      products: (json['products'] as List)
          .map((item) => OrderProduct.fromJson(item))
          .toList(),
      totalPrice: json['totalPrice'].toDouble(),
      date: DateTime.fromMillisecondsSinceEpoch(json['date']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'userId': userId,
      'products': products.map((product) => product.toJson()).toList(),
      'totalPrice': totalPrice,
      'date': date.millisecondsSinceEpoch,
      'status': status,
    };
  }
}

class OrderProduct {
  final String productId;
  final int quantity;

  OrderProduct({
    required this.productId,
    required this.quantity,
  });

  factory OrderProduct.fromJson(Map<String, dynamic> json) {
    return OrderProduct(
      productId: json['productId'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'quantity': quantity,
    };
  }
}
