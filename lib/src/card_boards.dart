import 'package:flutter/material.dart';

import 'card.dart';

class CardBoards extends StatefulWidget {
  const CardBoards({super.key});

  @override
  State<CardBoards> createState() => _CardBoardsState();
}

class _CardBoardsState extends State<CardBoards> {
  List<int> cards = [1, 5, 2, 6, 3, 4, 3, 2, 6, 1, 4, 5];

  List<bool> cardsFlippedState = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void onTapCard(int cardIndex) {
    print('$cardIndex 번째 카드를 선택하셨습니다.');
    setState(() {
      cardsFlippedState[cardIndex] = true;
    });
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
              isFlipped: cardsFlippedState[i], // 추가
              onTap: () {
                onTapCard(i);
              },
            ),
        ],
      ),
    );
  }
}
