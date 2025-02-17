import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 170,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
            child: CustomImage(),
          ),
          itemCount: 12,
          scrollDirection: Axis.horizontal,
        ));
  }
}
