import 'package:flutter/material.dart';

import 'explicit_animation/list_animations.dart';
import 'explicit_animation/loading_animations.dart';
import 'explicit_animation/login_animation.dart';
import 'implicit_animation/animated_tween_animation_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingAnimation(
        progress: 1,
        color: Colors.purple,
      ),
    );
  }
}
