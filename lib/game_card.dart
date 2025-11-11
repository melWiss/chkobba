import 'package:chkobba/angle_to_radian_mixin.dart';
import 'package:chkobba/game_card_model.dart';
import 'package:chkobba/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget with AngleToRadianMixin {
   GameCard({
    required this.model,
    double angle = 0,
    this.cardSize = 300,
    super.key,
  }) {
    this.angle = angle;
  }

  final GameCardModel model;
  final double cardSize;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset((width/2) * -radian, (height/3) * radian.abs()),
      child: Transform.rotate(
        angle: radian,
        child: Material(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(20),
          elevation: 4,
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(12),
            height: height,
            width: width,
            child: model.isFacedown
                ? Assets.svg.backCover.svg(
                    colorFilter: ColorFilter.mode(
                      model.backCoverColor,
                      BlendMode.srcATop,
                    ),
                  )
                : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${model.value}',
                          style: TextStyle(
                            color: model.logo.color,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        model.logo.widget(size: 30),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  double get width => cardSize * .7;

  double get height => cardSize;
}
