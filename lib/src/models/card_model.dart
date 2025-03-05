class CardModel {
  final int index;
  final int cardValue;
  bool isFlipped;

  CardModel({
    required this.index,
    required this.cardValue,
    this.isFlipped = false,
  });
}
