import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/long_divider.dart';
import 'package:python_class_site/features/widgets/section_title.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/functions.dart';

class IntFloatBool extends StatelessWidget {
  const IntFloatBool({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    String title = 'Int, Float & Bool';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntFloatBoolIntro(),
          gapH32,
          SectionTitle(title: 'Integers (int)'),
          gapH16,
          IntIntro(),

        ],
      ),
    );
  }
}

class IntIntro extends StatelessWidget {
  const IntIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'An ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'integer (int) ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: 'is just a number without a decimal point. An int can be a positive or negative number. Integers are used in coding for counting, indexing, and basic mathematical operations.\n\nAn int can be stored as a variable in the same way as a string.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class IntFloatBoolIntro extends StatelessWidget {
  const IntFloatBoolIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Int, Float, and Bool ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'are basic data types in Python that numbers and basic logic. These data types are especially important in programs that require logic, counting, indexing, or math.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}
