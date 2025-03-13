import 'dart:io';

import 'package:hard_study_2025/shopping_mall/data/shopping_mall_data.dart';
import 'package:hard_study_2025/shopping_mall/service/shopping_mall_service.dart';

void main() {
  while (true) {
    print(
        '\n----------------------------------------------------------------------------------------------------------');
    print('[1] 상품 목록 보기 / [2] 상품 목록 보기 / [3] 상품 목록 보기 / [4] 상품 목록 보기');
    print(
        '----------------------------------------------------------------------------------------------------------');

    String? input = ShoppingMallService.input();

    switch (input) {
      case '1':
        print('\n=== 상품 목록 ===');
        for (var item in ShoppingMallData.itemList.entries) {
          var price = ShoppingMallService.formater(item);
          print('${item.key}: $price원');
        }
        break;
      case '2':
        print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
        return;
      case '3':
        print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
        return;
      case '4':
        print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
        break;
      default:
        print('잘못된 입력입니다.');
        break;
    }
  }
}
