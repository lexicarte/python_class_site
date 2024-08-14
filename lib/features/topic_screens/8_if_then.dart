import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/elif_activity.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/elif_intro.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/else_examples.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/else_intro.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/if_then_examples.dart';
import 'package:python_class_site/features/topic_screens/8_if_then/if_then_intro.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/long_divider.dart';

class IfThen extends StatelessWidget {
  const IfThen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'If-Then';

    return TopicScreen(
      title: title,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IfThenIntro(),
          gapH32,
          IfThenExamples(),
          gapH32,
          LongDivider(),
          gapH32,
          ElseIntro(),
          gapH32,
          ElseExamples(),
          gapH32,
          LongDivider(),
          gapH32,
          ElifIntro(),
          gapH32,
          ElifActivity(),
          gapH64,
        ],
      ),
    );
  }
}
