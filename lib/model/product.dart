class Product {
  final String name;
  final String description;
  final double price;
  final String category;
  final String img;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.img,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      category: json['category'],
      img: json['img'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'category': category,
      'img': img,
    };
  }
}
