import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/5_strings.dart';
import 'package:python_class_site/features/widgets/section_title.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/functions.dart';
import '../widgets/long_divider.dart';
import '7_data_types/concatenation.dart';
import '7_data_types/data_type_intro.dart';
import '7_data_types/f_string.dart';
import '7_data_types/indexing_strings.dart';
import '7_data_types/repetition.dart';
import '7_data_types/replace_string.dart';
import '7_data_types/upper_lower_case.dart';

class DataTypes extends StatelessWidget {
  const DataTypes({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Data Types & More About Strings';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DataTypeIntro(),
          gapH32,
          const SectionTitle(title: 'Strings'),
          gapH16,
          const StringDefinition(),
          gapH16,
          Text(
              'We covered basic strings, and assigning a string to a variable, but Python can do a lot more!'),
          gapH32,
          const LongDivider(),
          gapH32,
          const ConcatenationSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const RepetitionSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const IndexingSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const UpperLowercaseSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const ReplaceSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const FStringSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const Text('There are many, many more things you can do with strings in Python. For a comprehensive list check out the docs:\n'),
          GestureDetector(
              onTap: () => openUrl('https://docs.python.org/3/library/stdtypes.html#str', 'https://docs.python.org/3/library/stdtypes.html#str'),
              child: const Text('https://docs.python.org/3/library/stdtypes.html#str')),
          gapH64,
        ],
      ),
    );
  }
}
