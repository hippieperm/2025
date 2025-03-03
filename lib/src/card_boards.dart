import 'package:flutter/material.dart';

import 'card.dart';

class CardBoards extends StatefulWidget {
  CardBoards({super.key});

  @override
  State<CardBoards> createState() => _CardBoardsState();
}

class _CardBoardsState extends State<CardBoards> {
  List<int> cards = [1, 5, 2, 6, 3, 4, 3, 2, 6, 1, 4, 5];

  void onTapCard(int cardIndex) {
    print('$cardIndex 번째 카드를 선택하셨습니다.');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: [
          for (var i = 0; i < cards.length; i++)
            CardWidget(
              cardNumber: cards[i],
              onTap: () => onTapCard(i),
            ),
        ],
      ),
    );
  }
}
