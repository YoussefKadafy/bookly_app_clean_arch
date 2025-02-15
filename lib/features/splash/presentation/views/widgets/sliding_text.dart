import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animationSliding2,
    required this.animationSliding,
  });

  final Animation<Offset> animationSliding2;
  final Animation<Offset> animationSliding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationSliding2,
      builder: (context, _) {
        return SlideTransition(
          position: animationSliding2,
          child: AnimatedBuilder(
            animation: animationSliding,
            builder: (context, _) {
              return SlideTransition(
                position: animationSliding,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
