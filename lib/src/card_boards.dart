import 'package:flutter/material.dart';

import 'card.dart';

class CardBoards extends StatelessWidget {
  CardBoards({super.key});

  List<int> cards = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: [
          for (var i = 0; i < 12; i++)  CardWidget(),
        ],
      ),
    );
  }
}
