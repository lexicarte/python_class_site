import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';
import 'package:python_class_site/features/widgets/long_divider.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class IfThenIntro extends StatelessWidget {
  const IfThenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Text(
            'Now the fun begins! We know enough now about data types and variables to start writings some interesting programs.'),
        gapH16,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'An ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'if-then statement ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'is used to run a block of code only if a specific condition is true. It’s a way to make decisions in your code based on different conditions.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const Text(
            'The basic structure of an if-then statement looks like this:'),
        gapH32,
        const CodeBlock(
          title: 'If-Then Structure',
          inputTexts: [
            Text('if condition:'),
            Text('    # Code to execute if true'),
          ],
          outputTexts: [],
        ),
        gapH32,
        const LongDivider(),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'Note that the second line is indented from the first line. We will to stop here to discuss a critical element of Python: ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'indents',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Spaces are an actual part of the code in Python. ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'Indents are used to show structure and hierarchy. An indent, like in the if-then code above, is made from FOUR SPACES (hitting the space bar 4 times). CAUTION: Using the "tab" key is not a replacement for making 4 spaces.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        Text(
          'Indentation makes code more consistent and readable.',
          style: adjustableAccentStyle(width),
        ),
        gapH16,
        const Text(
            'Programs like PyCharm help by automating the indentation for you!'),
        gapH32,
        const LongDivider(),
        gapH32,
      ],
    );
  }
}
