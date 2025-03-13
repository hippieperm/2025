import 'dart:io';

class ShoppingMallService {
  static void showProducts() {}

  static void addToCart() {}

  static void showTotal() {}

  static String? input() {
    return stdin.readLineSync();
  }

  static String formater(MapEntry<String, int> item) {
    return item.value.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
