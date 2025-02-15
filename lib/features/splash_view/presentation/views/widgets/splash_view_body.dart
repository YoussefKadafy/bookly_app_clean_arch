import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationSliding;
  late AnimationController animationController2;
  late Animation<Offset> animationSliding2;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationSliding = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(1, 4),
          end: const Offset(0, 4),
        ),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(0, 4), // vertical phase start
          end: const Offset(0, 0), // end position
        ),
        weight: 50,
      ),
    ]).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();

    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animationSliding2 = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(0, 0),
          end: const Offset(0, 0),
        ),
        weight: 50,
      ),
    ]).animate(animationController2)
      ..addListener(() {
        setState(() {});
      });

    Future.delayed(const Duration(seconds: 2), () {
      animationController2.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/Logo.png',
        ),
        const SizedBox(
          height: 10,
        ),
        SlideTransition(
          position: animationSliding2,
          child: SlideTransition(
            position: animationSliding,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
