import 'package:flutter/material.dart';

class CustomImageNewestListView extends StatelessWidget {
  const CustomImageNewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: const DecorationImage(
                image: AssetImage('assets/images/Jue viole grace.jpeg'),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
