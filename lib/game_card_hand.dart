import 'dart:math' show pi, sin, sqrt;

import 'package:chkobba/game_card.dart';
import 'package:chkobba/game_card_hand_model.dart';
import 'package:flutter/material.dart';

class GameCardHand extends StatelessWidget {
  const GameCardHand({
    super.key,
    required this.model,
    this.handPosition = HandPositionEnum.bottom,
  });
  final GameCardHandModel model;
  final HandPositionEnum handPosition;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: handPosition.alignment,
      child: Transform.translate(
        offset: Offset(handPosition.xPosition, 0),
        child: Transform.rotate(
          angle: handPosition.radian,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // TODO: this should become dynamic in the future, this only works with
              // three cards.
              GameCard(
                model: model.cards[0],
                angle: -30,
                cardSize: 150,
              ),
              GameCard(
                model: model.cards[1],
                angle: 0,
                cardSize: 150,
              ),
              GameCard(
                model: model.cards[2],
                angle: 30,
                cardSize: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum HandPositionEnum {
  left(alignment: Alignment.centerLeft, angle: 90),
  top(alignment: Alignment.topCenter, angle: 180),
  right(alignment: Alignment.centerRight, angle: -90),
  bottom(alignment: Alignment.bottomCenter, angle: 0);

  final double angle;
  final Alignment alignment;

  const HandPositionEnum({required this.angle, required this.alignment});

  double get radian => angle * (pi / 180);

  double get xPosition =>
      sqrt(angle * angle) * (-sin(radian)) - sin(radian) * angle.abs() / 1.7;
}
