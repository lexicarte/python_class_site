import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class ComparisonSection extends StatelessWidget {
  const ComparisonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Comparisons (==, <, >, etc) ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'can be used to see if numbers are equal to, greater than, or less than each other.\n\nTo see if two numbers are ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'equal ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'use the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '== ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operator.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Equal Comparison',
          inputTexts: [
            Text('a = 3'),
            Text('b = 3'),
            Text('result = (a == b)'),
            Text('print(result)'),
          ],
          outputTexts: [Text('True')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'IMPORTANT NOTE! ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Be sure to use the "==" operator to check for a comparison and not "=". In Python, "=" is only used to set the value of a variable like in ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"a = 5".\n\n',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'The opposite of == is ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'does not equal (!=).',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Use the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '!= ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operator to see if two numbers are NOT equal.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Not Equal Comparison',
          inputTexts: [
            Text('a = 2'),
            Text('b = 3'),
            Text('result = (a != b)'),
            Text('print(result)'),
          ],
          outputTexts: [Text('True')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You can compare numbers using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'greater than (>), less than (<), greater than or equal to (>=), and less than or equal to (<=) ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operators. Here are some examples:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Greater/Less Than',
          inputTexts: [
            Text('a = 2'),
            Text('b = 3'),
            Text('greater_than = (a > b)'),
            Text('print(greater_than)'),
            Text('less_than = (a < b)'),
            Text('print(less_than)'),
          ],
          outputTexts: [Text('False'), Text('True')],
        ),
        gapH32,
        const CodeBlock(
          title: 'Greater Than or Equal To',
          inputTexts: [
            Text('a = 5'),
            Text('b = 5'),
            Text('result = (a >= b)'),
            Text('print(result)'),
          ],
          outputTexts: [Text('True')],
        ),
        gapH32,
      ],
    );
  }
}
