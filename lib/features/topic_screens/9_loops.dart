import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/9_lists_loops/list_intro.dart';
import 'package:python_class_site/features/topic_screens/9_lists_loops/list_manipulation.dart';
import 'package:python_class_site/features/topic_screens/9_lists_loops/loop_intro.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/long_divider.dart';
import '../widgets/section_title.dart';
import '9_lists_loops/loop_wo_list.dart';

class Loops extends StatelessWidget {
  const Loops({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Lists & Loops';

    return TopicScreen(
      title: title,
      body: const Column(
        children: [
          SectionTitle(title: 'Lists'),
          gapH16,
          ListIntro(),
          gapH32,
          LongDivider(),
          gapH32,
          ListManipulation(),
          gapH64,
          SectionTitle(title: 'Loops'),
          gapH16,
          LoopIntro(),
          gapH32,
          LongDivider(),
          gapH32,
          LoopWithoutList(),
          gapH64,
        ],
      ),
    );
  }
}
