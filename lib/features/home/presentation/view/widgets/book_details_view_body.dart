import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/books_acion.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/rating_book.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16, top: 8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const BookDetailsAppBar(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: const CustomImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Rudyard Kibling',
                  style: Styles.textStyle18.copyWith(
                      color: Colors.white.withOpacity(.7),
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 18,
                ),
                const RatingBook(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const BooksAcion(),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can Also Like : ',
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SimilarBooksListView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
