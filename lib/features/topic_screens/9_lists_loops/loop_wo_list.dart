import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/bulleted_list.dart';
import 'package:python_class_site/features/widgets/code_block.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class LoopWithoutList extends StatelessWidget {
  const LoopWithoutList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You do NOT need a list to do a loop. You can loop through any Python object that is ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'iterable',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                '. Iterable is just a coding way of saying "something you can loop through".\n\nIterable types in Python include some things we have discussed and some we have not:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const BulletedList(
          points: [
            'String - can loop through characters',
            'List - can loop through items',
            'Tuple - like a list, but cannot be changed (is IMMUTABLE)',
            'Dictionary - like a list, but has pairs of items instead of single items',
            'Range - represents a sequence of numbers',
          ],
        ),
        gapH16,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Let\'s learn about ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'ranges ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'and we\'ll cover the other stuff later.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const Text('You can create a range of numbers (a list of numbers in order) using: range(a, b, c)'),
        gapH16,
        const BulletedList(
          points: [
            'a is the starting number. The default is 0.',
            'b is the number to stop at. b itself is NOT included in the sequence. So if I want to count from 0 to 5 my range would be range(0, 6) or just range(6)',
            'c is called the step. This is the increment the range will count (by 1\'s, by 2\'s, etc). Default is 1.',
          ],
        ),
        gapH16,
        const Text('Here are some basic ranges, and we\'ll print them by looping through them and printing each number:'),
        gapH32,
        const CodeBlock(
          title: 'Basic Ranges',
          inputTexts: [
            Text('range1 = range(8)'),
            Text('range2 = range(3, 10)'),
            Text('range3 = range(2, 10, 2)\n'),
            Text('for i in range1:'),
            Text('    print(i)\n'),
            Text('for i in range2:'),
            Text('    print(i)\n'),
            Text('for i in range3:'),
            Text('    print(i)'),
          ],
          outputTexts: [
            Text('0 1 2 3 4 5 6 7'),
            Text('3 4 5 6 7 8 9'),
            Text('2 4 6 8'),
          ],
        ),
        gapH32,
      ],
    );
  }
}
