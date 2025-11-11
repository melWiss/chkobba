import 'package:flutter/material.dart';

class GameCardModel {
  final String icon;
  final Color color;
  final Color backCoverColor;
  final int value;
  final bool isFacedown;

  const GameCardModel({
    required this.icon,
    required this.color,
    required this.value,
    this.isFacedown = false,
    this.backCoverColor = Colors.red,
  });
}
