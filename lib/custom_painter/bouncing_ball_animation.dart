import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BouncingBallAnimation extends StatefulWidget {
  const BouncingBallAnimation({super.key});

  @override
  State<BouncingBallAnimation> createState() => _BouncingBallAnimationState();
}

class _BouncingBallAnimationState extends State<BouncingBallAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Ball Animation'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return CustomPaint(
                  size: const Size(200, 200),
                  painter: BouncingBallPainter(animation.value),
                );
              })
        ],
      )),
    );
  }
}

class BouncingBallPainter extends CustomPainter {
  final double animationValue;
  BouncingBallPainter(this.animationValue);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      Offset(size.width / 2, 0),
      20,
      Paint()..color = Colors.purple,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
