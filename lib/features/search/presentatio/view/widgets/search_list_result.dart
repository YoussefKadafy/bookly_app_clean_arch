import 'package:bookly_app_clean_arch/features/home/presentation/view/widgets/custom_newest_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchListResult extends StatelessWidget {
  const SearchListResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const CustomNewestListViewItem(),
      itemCount: 10,
    );
  }
}
