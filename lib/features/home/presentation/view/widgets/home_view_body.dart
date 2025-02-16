import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/newest_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 20,
          ),
          const FeaturedListView(),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Newest Books',
            style:
                Styles.textStyle18.copyWith(fontFamily: kGTSectraFineRegular),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: NewestListView()),
        ],
      ),
    );
  }
}
