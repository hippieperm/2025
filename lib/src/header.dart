import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final int tryCount;
  final int addScore;
  final VoidCallback onReset;

  const Header({
    super.key,
    this.tryCount = 0,
    this.addScore = 0,
    required this.onReset,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'score',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                  letterSpacing: 0,
                  height: 0,
                ),
              ),
              Text('${widget.addScore}',
                  style: const TextStyle(
                      height: 0,
                      fontSize: 30,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'try count',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                  letterSpacing: 0,
                  height: 0,
                ),
              ),
              Text('${widget.tryCount}',
                  style: const TextStyle(
                      height: 0,
                      fontSize: 30,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          )),
          Expanded(
            child: GestureDetector(
              onTap: widget.onReset,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xff94BEE5),
                ),
                child: const Center(child: Text('새 게임')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
