import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/Jue viole grace.jpeg',
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
