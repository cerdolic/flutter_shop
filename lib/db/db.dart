import 'package:shop/model/order.dart';
import 'package:shop/model/product.dart';
import 'package:shop/model/user.dart';

class Db {
  static final instance = Db._();

  Db._();

  Future<void> init() async {}

  Future<void> setUser(User user) async {}

  Future<User?> getUser(String userId) async {
    return null;
  }

  Future<void> deleteUser(User user) async {}

  Future<Product?> getProduct(String productId) async {
    return null;
  }

  Future<List<Product>?> getProducts(String categoryId) async {
    return null;
  }

  Future<void> addOrder(Order order) async {}

  Future<Order?> getOrder(String orderId) async {
    return null;
  }

  Future<void> deleteOrder(Order order) async {}
}
