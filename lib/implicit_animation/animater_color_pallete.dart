import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedColorPallete extends StatefulWidget {
  const AnimatedColorPallete({super.key});

  @override
  State<AnimatedColorPallete> createState() => _AnimatedColorPalleteState();
}

class _AnimatedColorPalleteState extends State<AnimatedColorPallete> {
  List<Color> currentPalette = generateRandomPalette();

  static List<Color> generateRandomPalette() {
    final random = Random();
    return List.generate(
        5,
        (_) => Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            ));
  }

  void regenetratePalette() {
    setState(() {
      currentPalette = generateRandomPalette();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Pallete Generator'),
      ),
      body: Center(
        child: Column(
          children: [
            for (Color color in currentPalette)
              Container(
                width: 100,
                height: 100,
                color: color,
                margin: const EdgeInsets.all(8),
              ),
            ElevatedButton(
              onPressed: regenetratePalette,
              child: const Text('Generate New Pallete'),
            )
          ],
        ),
      ),
    );
  }
}
