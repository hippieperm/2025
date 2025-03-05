import 'package:flutter/material.dart';

import 'card.dart';

class CardBoards extends StatefulWidget {
  final Function() updateTryCount;

  const CardBoards({
    super.key,
    required this.updateTryCount,
  });

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

  int instantFirstCard = -1;

  void onTapCard(int cardIndex) {
    print('$cardIndex 번째 카드를 선택하셨습니다.');

    if (instantFirstCard == -1) {
      instantFirstCard = cardIndex;
    } else {
      // 두번째 카드가 선택되었을때 로직 추가
      widget.updateTryCount(); // 추가

      var firstCard = cards[instantFirstCard];
      var secondCard = cards[cardIndex];

      if (firstCard == secondCard) {
        print('짝이 맞았습니다.');
        instantFirstCard = -1;
      } else {
        resetInstantCards(instantFirstCard, cardIndex);
      }
    }
    setState(() {
      cardsFlippedState[cardIndex] = true;
    });
  }

  void resetInstantCards(int firstIndex, int secondIndex) async {
    await Future.delayed(const Duration(seconds: 2)); // 추가
    setState(() {
      cardsFlippedState[firstIndex] = false;
      cardsFlippedState[secondIndex] = false;
    });
    instantFirstCard = -1;
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
