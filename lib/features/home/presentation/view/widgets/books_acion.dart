import 'package:bookly_app_clean_arch/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAcion extends StatelessWidget {
  const BooksAcion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.9 \$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 17,
              text: 'Free Preview',
              backgroundColor: Colors.red,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
