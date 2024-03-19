import 'package:flutter/material.dart';

class AnimatedShoppingCart extends StatefulWidget {
  const AnimatedShoppingCart({super.key});

  @override
  State<AnimatedShoppingCart> createState() => _AnimatedShoppingCartState();
}

class _AnimatedShoppingCartState extends State<AnimatedShoppingCart> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                height: 60,
                width: isExpanded ? 200 : 80,
                decoration: BoxDecoration(
                  color: isExpanded ? Colors.purple : Colors.blue,
                  borderRadius: BorderRadius.circular(isExpanded ? 30 : 10),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
