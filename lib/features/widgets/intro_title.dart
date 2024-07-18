import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class IntroTitle extends StatelessWidget {
  const IntroTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to',
            style: kTextTitleDark20,
            textAlign: TextAlign.center,
          ),
          Text(
            'Introduction to Coding',
            style: kTextTitleDark42,
            textAlign: TextAlign.center,
          ),
          Container(
            color: kMainAccentColor,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            child: Text('in Python', style: kTextCodeLight42),
          ),
        ],
      ),
    );
  }
}
