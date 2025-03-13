import 'dart:io';

import 'package:hard_study_2025/shopping_mall/data/shopping_mall_data.dart';
import 'package:hard_study_2025/shopping_mall/service/shopping_mall_service.dart';

void main() {
  while (true) {
    print(
        '\n----------------------------------------------------------------------------------------------------------');
    print(
        '[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료');
    print(
        '----------------------------------------------------------------------------------------------------------');

    String? input = ShoppingMallService.input();

    switch (input) {
      case '1':
        ShoppingMallService.showProducts();
        break;
      case '2':
        //TODO: 상품을 장바구니에 담을수 있는 기능
        ShoppingMallService.addToCart();
        break;
      case '3':
        //TODO: 장바구니에 담은 상품의 총가격
        ShoppingMallService.showTotal();
        break;
      case '4':
        print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
        break;
    }
  }
}
