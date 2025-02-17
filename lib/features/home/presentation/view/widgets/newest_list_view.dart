import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_newest_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 12,
        (context, index) => const Padding(
          padding: EdgeInsetsDirectional.only(bottom: 16.0),
          child: CustomNewestListViewItem(),
        ),
      ),
    );
  }
}
