import 'dart:io';

import 'package:hard_study_2025/shopping_mall/data/shopping_mall_data.dart';

class ShoppingMallService {
  static String? input() {
    return stdin.readLineSync();
  }

  static void showTotal() {
    if (ShoppingMallData.cart.isEmpty) {
      print('\n장바구니가 비어있습니다.');
      return;
    }

    int total = 0;
    print('\n=== 장바구니 목록 ===');

    ShoppingMallData.cart.forEach((itemName, count) {
      if (ShoppingMallData.itemList.containsKey(itemName)) {
        int price = ShoppingMallData.itemList[itemName]!;
        int itemTotal = price * count;
        total += itemTotal;

        String formattedPrice = formater(MapEntry(itemName, price));
        String formattedTotal = formater(MapEntry(itemName, itemTotal));

        print('$itemName - $count개 x $formattedPrice원 = $formattedTotal원');
      }
    });

    String formattedTotal = formater(MapEntry('total', total));
    print('\n총 가격: $formattedTotal원');
  }

  static void showProducts() {
    print('\n=== 상품 목록 ===');
    for (var item in ShoppingMallData.itemList.entries) {
      var price = ShoppingMallService.formater(item);
      print('${item.key} / $price원');
    }
  }

  static void addToCart() {
    print('\n상품의 이름을 입력하세요.');
    String itemName = ShoppingMallService.input()!;

    print('\n상품을 갯수를 입력하세요.');
    int itemCount = 0;
    try {
      String? input = ShoppingMallService.input();
      itemCount = int.parse(input ?? '0');

      if (ShoppingMallData.itemList.containsKey(itemName)) {
        ShoppingMallData.cart.addAll({itemName: itemCount});
        print('\n$itemName $itemCount개가 장바구니에 추가되었습니다.');
      } else {
        print('\n입력하신 상품이 존재하지 않습니다.');
      }
    } catch (e) {
      print('\n입력값이 올바르지 않아요! 숫자를 입력해주세요.');
    }
  }

  static void quit() {
    print('정말 종료하시겠습니까?');
    if (input() == '5') {
      print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
    } else {
      print('종료하지 않습니다.');
    }
  }

  static void cartReset() {
    if (ShoppingMallData.cart.isEmpty) {
      print('\n이미 장바구니가 비어있습니다.');
      return;
    }
  }

  static String formater(MapEntry<String, int> item) {
    return item.value.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }
}
