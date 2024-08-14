import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/7-5_int_float_bool/bool_intro.dart';
import 'package:python_class_site/features/topic_screens/7-5_int_float_bool/comparison_section.dart';
import 'package:python_class_site/features/widgets/long_divider.dart';
import 'package:python_class_site/features/widgets/section_title.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/functions.dart';
import '7-5_int_float_bool/basic_math.dart';
import '7-5_int_float_bool/float_intro.dart';
import '7-5_int_float_bool/other_uses.dart';
import '7-5_int_float_bool/temp_converter.dart';

class IntFloatBool extends StatelessWidget {
  const IntFloatBool({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Int, Float & Bool';

    return TopicScreen(
      title: title,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntFloatBoolIntro(),
          gapH32,
          SectionTitle(title: 'Integers (int)'),
          gapH16,
          IntIntro(),
          gapH32,
          LongDivider(),
          gapH32,
          BasicMath(),
          gapH32,
          LongDivider(),
          gapH32,
          ComparisonSection(),
          gapH32,
          LongDivider(),
          gapH32,
          OtherUses(),
          gapH32,
          SectionTitle(title: 'Float'),
          gapH16,
          FloatIntro(),
          gapH32,
          TempConverter(),
          gapH32,
          SectionTitle(title: 'Boolean (Bool)'),
          gapH16,
          BoolIntro(),
          gapH64,
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
            text:
                'is just a number without a decimal point. An int can be a positive or negative number. Integers are used in coding for counting, indexing, and basic mathematical operations.\n\nAn int can be stored as a variable in the same way as a string (Examples: ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'x = 75, index = 2',
            style: adjustableCodeDarkStyle(width),
          ),
          TextSpan(
            text: ').',
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
