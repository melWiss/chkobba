import 'package:chkobba/game_card_hand.dart';
import 'package:chkobba/game_card_hand_model.dart';
import 'package:chkobba/game_card_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            GameCardHand(
              handPosition: HandPositionEnum.right,
              model: GameCardHandModel(
                cards: [
                  GameCardModel(
                    logo: CardLogoEnum.heart,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.diamond,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.club,
                    value: 9,
                    isFacedown: true,
                  ),
                ],
              ),
            ),
            GameCardHand(
              handPosition: HandPositionEnum.left,
              model: GameCardHandModel(
                cards: [
                  GameCardModel(
                    logo: CardLogoEnum.heart,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.diamond,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.club,
                    value: 9,
                    isFacedown: true,
                  ),
                ],
              ),
            ),
            GameCardHand(
              handPosition: HandPositionEnum.top,
              model: GameCardHandModel(
                cards: [
                  GameCardModel(
                    logo: CardLogoEnum.heart,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.diamond,
                    value: 9,
                    isFacedown: true,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.club,
                    value: 9,
                    isFacedown: true,
                  ),
                ],
              ),
            ),
            GameCardHand(
              handPosition: HandPositionEnum.bottom,
              model: GameCardHandModel(
                cards: [
                  GameCardModel(
                    logo: CardLogoEnum.heart,
                    value: 9,
                    isFacedown: false,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.diamond,
                    value: 9,
                    isFacedown: false,
                  ),
                  GameCardModel(
                    logo: CardLogoEnum.club,
                    value: 9,
                    isFacedown: false,
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
