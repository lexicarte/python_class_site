import 'package:flutter/material.dart';
import 'package:python_class_site/constants/text_styles.dart';
import 'package:python_class_site/features/widgets/basic_string_list.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

class WhatCanPythonDo extends StatelessWidget {
  const WhatCanPythonDo({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'What Can Python Do?';

    List<String> pythonApplications = [
      'Desktop applications',
      'Automate tasks',
      'Web development',
      'Extracting data',
      'Data science (including machine learning)',
      'And more...',
    ];

    return TopicScreen(
      title: title,
      body: Column(
        children: [BasicList(list: pythonApplications)],
      ),
    );
  }
}
