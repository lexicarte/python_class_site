import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class BasicMath extends StatelessWidget {
  const BasicMath({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You can easily do ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'basic math ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'with Python (and very complex math as well, but we won\'t cover that here), using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text:
                    'arithmetic operators like plus (+), minus (-), multiply (*), divide (/), and more.\n\n',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Here are some basic math operation in Python:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Addition',
          inputTexts: [
            Text('a = 5'),
            Text('b = 10'),
            Text('result = a + b'),
            Text('print(result)'),
          ],
          outputTexts: [Text('15')],
        ),
        gapH32,
        const CodeBlock(
          title: 'Subtraction',
          inputTexts: [
            Text('a = 5'),
            Text('b = 10'),
            Text('result = b - a'),
            Text('print(result)'),
          ],
          outputTexts: [Text('5')],
        ),
        gapH32,
        const CodeBlock(
          title: 'Multiplication',
          inputTexts: [
            Text('a = 4'),
            Text('b = 7'),
            Text('result = a * b'),
            Text('print(result)'),
          ],
          outputTexts: [Text('28')],
        ),
        gapH32,
        const CodeBlock(
          title: 'Division',
          inputTexts: [
            Text('a = 5'),
            Text('b = 10'),
            Text('result = b / a'),
            Text('print(result)'),
          ],
          outputTexts: [Text('2.0')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'WAIT!!! ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Why did that last result have a decimal? Isn\'t an ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'int ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'supposed to be a number without a decimal point?\n\nDividing a number using (/) gives the result as a decimal number, called a ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'float ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'in Python. We\'ll get to that later.\n\nTo divide an ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'int ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'you can use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'floor division (//)',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    ', which rounds the result down to the nearest integer (chops off the decimal).',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Floor Division',
          inputTexts: [
            Text('a = 10'),
            Text('b = 3'),
            Text('division_result = a / b  # division'),
            Text('floor_result = a // b  # floor division'),
            Text('print(division_result)'),
            Text('print(floor_result)'),
          ],
          outputTexts: [
            Text('3.3333333333'),
            Text('3'),
          ],
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You can also find the remainder of a division operation using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'modulus (%).',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Modulus',
          inputTexts: [
            Text('a = 10'),
            Text('b = 3'),
            Text('modulus = a % b'),
            Text('print(modulus)'),
          ],
          outputTexts: [
            Text('1\n# 10 / 3 is 3 with 1 remaining'),
          ],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Exponents ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'in Python use the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '** ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operator, like this:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Exponents',
          inputTexts: [
            Text('a = 2'),
            Text('b = 3'),
            Text('exponent = a ** b'),
            Text('print(exponent)'),
          ],
          outputTexts: [
            Text('8'),
          ],
        ),
        gapH32,
        const Text('That\'s enough math for now..'),
      ],
    );
  }
}
