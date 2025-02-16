import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/go_router.dart';
import 'package:bookly_app_clean_arch/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

    _firstAnimation();

    _secondAnimation();
    _navigationToHome();
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
          kLogo,
        ),
        const SizedBox(
          height: 10,
        ),
        SlidingText(
            animationSliding2: animationSliding2,
            animationSliding: animationSliding),
      ],
    );
  }

  void _firstAnimation() {
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
          begin: const Offset(0, 4),
          end: const Offset(0, 0),
        ),
        weight: 50,
      ),
    ]).animate(animationController);
    animationController.forward();
  }

  void _secondAnimation() {
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
    ]).animate(animationController2);

    Future.delayed(const Duration(seconds: 2), () {
      animationController2.forward();
    });
  }

  void _navigationToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
