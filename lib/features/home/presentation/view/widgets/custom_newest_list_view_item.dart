import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/go_router.dart';
import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image_newest_list_view.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNewestListViewItem extends StatelessWidget {
  const CustomNewestListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          const CustomImageNewestListView(),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter \nand the Gobelt of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kGTSectraFineRegular),
                  ),
                ),
                Text(
                  'J.K Rowlling',
                  style: Styles.textStyle14
                      .copyWith(color: Colors.white.withOpacity(.6)),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.9 \$',
                      style: Styles.textStyle20,
                    ),
                    RatingBook(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
