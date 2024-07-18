import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/basic_string_list.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/text_styles.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Goals for this class';

    List<String> classGoals = ['Learn the lingo', 'Think like a coder', 'Prepare for a Python Certificate or web course', 'Gateway to other languages'];

    return TopicScreen(
      title: title,
      body: Column(
        children: [BasicList(list: classGoals)],
      ),
    );
  }
}
