import 'package:flutter/material.dart';

import 'card_boards.dart';
import 'header.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tryCount = 0;
  int score = 0;

  // 추가
  void updateTryCount() {
    setState(() {
      tryCount++;
    });
  }

  void addScore() {
    setState(() {
      score += 10;
    });
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
            Header(
              tryCount: tryCount,
              addScore: score,
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  CardBoards(
                    updateTryCount: updateTryCount,
                    addScore: addScore,
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
