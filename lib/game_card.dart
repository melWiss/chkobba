import 'package:chkobba/game_card_model.dart';
import 'package:chkobba/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    required this.model,
    super.key,
  });

  final GameCardModel model;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(20),
      elevation: 4,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(12),
        height: 300,
        width: 300 * .7,
        child: model.isFacedown
            ? Assets.svg.backCover.svg(
                colorFilter: ColorFilter.mode(
                  model.backCoverColor,
                  BlendMode.srcATop,
                ),
              )
            : Center(
                child: Text(
                  '${model.value}${model.icon}',
                  style: TextStyle(
                    color: model.color,
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
