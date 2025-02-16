import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemBuilder: (context, index) => const CustomImage(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
