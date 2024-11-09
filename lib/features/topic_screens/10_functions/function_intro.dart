import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class FunctionIntro extends StatelessWidget {
  const FunctionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Another powerful tool in code is a ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'function',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    '. A function is a reusable block of code that does a task. You can think of a function like a "recipe" that you can use anytime you want to use the function of that code. If you ever find yourself writing the same lines of code over and over, you may benefit from using a function!',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Basic Function',
          inputTexts: [
            Text('# Define the function\n'),
            Text('def greet():'),
            Text('    print("hello hello")\n\n'),
            Text('# Use, or "call", the function\n'),
            Text('greet()'),
          ],
          outputTexts: [Text('hello hello')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The keyword ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'def ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'tells Python that you are defining a function. The name of the function is ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'greet.',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH64,
      ],
    );
  }
}
