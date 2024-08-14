import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class BoolIntro extends StatelessWidget {
  const BoolIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'boolean (or bool)',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'is a data type that represents one of two possible values: True or False.\n\nBooleans are often used in conditional statements and logical operations to control the flow of a program based on certain conditions.\n\nYou can assign bool values directly:\n',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'is_raining = False\nis_sunny = True\n\n',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'We will use bools more when we start writing ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'conditional statements',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: ', where you will check whether something is true or not and then take some action (Ex: if is_raining == True, then bring an umbrella)\n\nWe will also use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'logical operators ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'which compare two things and return a bool. They are:\n',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '▻ and : ',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'returns True if both expressions are true\n',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '▻ or : ',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'returns True if at least one expression is true\n',
                style: adjustableDarkStyle(width),
              ),TextSpan(
                text: '▻ not : ',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'returns True if the expression is false\n',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Logical Operators',
          inputTexts: [
            Text('x = True'),
            Text('y = False'),
            Text('print(x and y)  # Output: False'),
            Text('print(x or y)   # Output: True'),
            Text('print(not x)    # Output: False'),
          ],
          outputTexts: [Text('False'), Text('True'), Text('False')],
        ),
      ],
    );
  }
}
