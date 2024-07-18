import 'package:flutter/material.dart';
import 'package:python_class_site/constants/text_styles.dart';

import '../../constants/colors.dart';

class KeyboardShortcut extends StatelessWidget {
  const KeyboardShortcut({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCommentColor,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        children: [
          Text('Keyboard Shortcut: $title', style: kTextDark20.copyWith(fontStyle: FontStyle.italic)),
          Text(text, style: kTextDark20),
        ],
      ),
    );
  }
}

