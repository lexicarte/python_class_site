import 'package:flutter/material.dart';

import '../../../constants/text_styles.dart';
import '../topic.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
      child: Center(
        child: Text(
          topic.name,
          style: kTextTitleDark42,
        ),
      ),
    );
  }
}
