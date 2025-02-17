import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You Can Also Like : ',
            style: Styles.textStyle20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
