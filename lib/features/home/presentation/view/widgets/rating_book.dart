import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 9,
        ),
        const Text(
          '4.7',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(298)',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withOpacity(.5),
          ),
        )
      ],
    );
  }
}
