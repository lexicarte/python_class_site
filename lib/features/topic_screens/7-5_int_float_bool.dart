import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

class IntFloatBool extends StatelessWidget {
  const IntFloatBool({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Int, Float & Bool';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
      ),
    );
  }
}
