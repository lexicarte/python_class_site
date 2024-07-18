import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:python_class_site/constants/colors.dart';
import 'package:python_class_site/constants/text_styles.dart';
import 'package:python_class_site/features/widgets/functions.dart';
import 'package:python_class_site/features/widgets/keyboard_shortcut.dart';
import 'package:python_class_site/features/widgets/long_divider.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/code_block.dart';

class Print extends StatelessWidget {
  const Print({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    String title = 'Printing';

    return TopicScreen(
      title: title,
      body: Column(
        children: [
          const PrintDefinition(),
          gapH32,
          const CommentDefinition(),
          gapH16,
          Image.asset('images/console.png', width: width * .75),
          gapH16,
          Text(
            'The console allows developers to see real-time outputs, error messages, and other information that helps in understanding the behavior of the code.',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          const LongDivider(),
          gapH16,
          const CommentDefinition(),
          gapH16,
          const PrintCodeExample(),
          gapH16,
          Text(
            'Comments are used to provide explanations, clarify the purpose of code sections, or leave notes for other developers (or yourself) who might read the code later. They help make the code more understandable and maintainable. Use them EVERYWHERE.',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          const KeyboardShortcut(
              title: 'Comment a line',
              text: 'On Mac: use "Command + /"\nOn Windows: use "Ctrl + /"'),
          gapH64,
        ],
      ),
    );
  }
}

class PrintDefinition extends StatelessWidget {
  const PrintDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Printing ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'in coding jargon means to output something (like text or data) to the ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'console',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: '.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class ConsoleDefinition extends StatelessWidget {
  const ConsoleDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'The ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'console ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'is the area of the screen in PyCharm (or replit, the terminal, or whatever you\'re using) where you get output from your code.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class CommentDefinition extends StatelessWidget {
  const CommentDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'comment ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'is a line of code that is ignored by the program.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'To turn a line into a comment, add a ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '# ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'to the beginning of the line.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        Text(
          'To comment multiple lines, surround them with "triple quotes" (""" or \'\'\')',
          style: adjustableDarkStyle(width),
        ),
      ],
    );
  }
}

class PrintCodeExample extends StatelessWidget {
  const PrintCodeExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CodeBlock(
      title: 'Comments',
      inputTexts: [
        Text(
          '# This is a single line comment\n',
        ),
        Text(
          '"""\nThis is a multi-line comment\nI can write whatever I want here\n"""\n',
        ),
        Text(
          'print(\'Hello, world!\')  # This is also a comment',
        ),
      ],
      outputTexts: [Text('Hello, world!')],
    );
  }
}
