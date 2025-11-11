import 'package:chkobba/game_card.dart';
import 'package:chkobba/game_card_hand_model.dart';
import 'package:flutter/material.dart';

class GameCardHand extends StatelessWidget {
  const GameCardHand({
    super.key,
    required this.model,
  });
  final GameCardHandModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // TODO: this should become dynamic in the future, this only works with
        // three cards.
        GameCard(model: model.cards[0], angle: -30,cardSize: 150,),
        GameCard(model: model.cards[1], angle: 0,cardSize: 150,),
        GameCard(model: model.cards[2], angle: 30,cardSize: 150,),
      ],
    );
  }
}
