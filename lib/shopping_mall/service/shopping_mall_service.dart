import 'dart:io';

import 'package:hard_study_2025/shopping_mall/data/shopping_mall_data.dart';

class ShoppingMallService {
  static void showProducts() {}

  static void addToCart() {
    print('\n상품의 이름을 입력하세요.');
    String itemName = ShoppingMallService.input()!;
    print('\n상품을 갯수를 입력하세요.');
    int itemCount = int.parse(ShoppingMallService.input()!);

    ShoppingMallData.itemList.containsKey(itemName); 
    ShoppingMallData.cart.addAll({itemName: itemCount});
  }

  static void showTotal() {}

  static String? input() {
    return stdin.readLineSync();
  }

  static String formater(MapEntry<String, int> item) {
    return item.value.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
