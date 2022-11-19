import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Scaffold(body: ColorChanger()),
    );
  }
}

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({super.key});

  @override
  State<BackgroundColor> createState() => _BackgroundColor();
}

class _BackgroundColor extends State<BackgroundColor> {
  randomColor() {
    return Color(math.Random().nextInt(0xffffffff));
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: randomColor());
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChanger();
}

class _ColorChanger extends State<ColorChanger> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: ElevatedButton(
        style: style,
        onPressed: () => {const ColorChanger()},
        child: const Text('CHANGE'),
      ),
    );
  }
}
