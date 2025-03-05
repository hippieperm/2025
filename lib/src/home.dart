import 'package:flutter/material.dart';

import 'card_boards.dart';
import 'header.dart';

class Home extends StatelessWidget {
  int tryCount = 10;

  Home({super.key}); // 추가
  void updateTryCount() {
    print('시도 횟수를 업데이트합니다.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE7E4),
      appBar: AppBar(
        title: const Text('짝맞추기 게임'),
        backgroundColor: const Color(0xff92CBFF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(tryCount: tryCount),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  CardBoards(
                    updateTryCount: updateTryCount,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
