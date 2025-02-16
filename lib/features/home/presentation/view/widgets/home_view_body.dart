import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_image.dart';
import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}
