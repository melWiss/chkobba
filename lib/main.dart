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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: GameCard(
          icon: '♥️',
          color: Colors.red,
          value: 9,
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
    required this.icon,
    required this.color,
    required this.value,
  });

  final String icon;
  final Color color;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(20),
      elevation: 4,
      color: Colors.white,
      child: Container(
        padding: EdgeInsetsGeometry.all(12),
        height: 300,
        width: 230,
        child: Center(
          child: Text(
            '$value$icon',
            style: TextStyle(
              color: color,
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
