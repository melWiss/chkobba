import 'package:flutter/material.dart';

enum CardLogoEnum {
  heart(Colors.red, '♥'),
  diamond(Colors.red, '♦'),
  spade(Colors.black, '♠'),
  club(Colors.black, '♣');

  final Color color;
  final String emoji;

  const CardLogoEnum(this.color, this.emoji);

  Widget widget({double size = 72}) => Text(
        emoji,
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      );
}

class GameCardModel {
  final CardLogoEnum logo;
  final Color backCoverColor;
  final int value;
  final bool isFacedown;

  const GameCardModel({
    required this.logo,
    required this.value,
    this.isFacedown = false,
    this.backCoverColor = Colors.red,
  });
}
