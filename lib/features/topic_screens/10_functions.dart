import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/10_functions/function_activities.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/section_title.dart';
import '10_functions/function_examples.dart';
import '10_functions/function_intro.dart';

class Functions extends StatelessWidget {
  const Functions({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Functions';

    return TopicScreen(
      title: title,
      body: const Column(
        children: [
          FunctionIntro(),
          gapH16,
          FunctionExamples(),
          gapH16,
          FunctionActivities(),
          gapH64,
        ],
      ),
    );
  }
}
