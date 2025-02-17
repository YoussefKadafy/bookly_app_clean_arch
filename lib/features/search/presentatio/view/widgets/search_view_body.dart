import 'package:bookly_app_clean_arch/consts.dart';
import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/search/presentatio/view/widgets/custom_text_field.dart';
import 'package:bookly_app_clean_arch/features/search/presentatio/view/widgets/search_list_result.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            onSubmitted: (data) {},
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Search Result : ',
            style:
                Styles.textStyle20.copyWith(fontFamily: kGTSectraFineRegular),
          ),
          const SizedBox(
            height: 30,
          ),
          const Expanded(child: SearchListResult()),
        ],
      ),
    );
  }
}
