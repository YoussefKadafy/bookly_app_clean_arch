import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/books_acion.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';

class BookDetailsSectio extends StatelessWidget {
  const BookDetailsSectio({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
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
      ],
    );
  }
}
