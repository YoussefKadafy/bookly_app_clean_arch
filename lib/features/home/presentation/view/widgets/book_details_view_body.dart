import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16.0, left: 16, top: 8),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                BookDetailsAppBar(),
                SizedBox(
                  height: 20,
                ),
                BookDetailsSectio(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
