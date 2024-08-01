import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/functions.dart';
import 'package:python_class_site/features/widgets/short_divider.dart';

import '../../constants/app_sizes.dart';
import '../../constants/text_styles.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        gapH24,
        Text(
          title,
          style: kTextTitleDark36,
          textAlign: TextAlign.center,
        ),
        const ShortDivider(),
        gapH24,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .08),
          child: DefaultTextStyle(
            style: adjustableDarkStyle(width),
            child: body,
          ),
        ),
      ],
    );
  }
}
