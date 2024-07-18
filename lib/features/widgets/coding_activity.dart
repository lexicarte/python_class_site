import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';
import '../../constants/colors.dart';
import 'functions.dart';

class CodingActivity extends StatelessWidget {
  const CodingActivity({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(border: Border.all(color: kMainAccentColor)),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'CODING PROJECT: ',
                  style: adjustableDarkLargeTitleStyle(width),
                ),
                TextSpan(
                  text: title,
                  style: adjustableAccentLargeTitleStyle(width),
                ),
              ],
            ),
          ),
          gapH16,
          body,
        ],
      ),
    );
  }
}
