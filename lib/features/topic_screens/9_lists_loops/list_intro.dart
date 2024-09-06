import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/bulleted_list.dart';
import 'package:python_class_site/features/widgets/code_block.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class ListIntro extends StatelessWidget {
  const ListIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'You can create a collection of items and store them as a single variable using a ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'list',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    '. Lists can have items of any type (strings, numbers, and even other lists). You can create a list in Python by putting the items between square brackets ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '[] ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'and separating them by ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'commas, ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'like this:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Basic List',
          inputTexts: [
            Text('fruits = ["peach", "banana", "mango", "lemon"]'),
          ],
          outputTexts: [],
        ),
        gapH32,
        const Text(
            'A list of numbers (ints, floats, or both) would look like this:'),
        gapH32,
        const CodeBlock(
          title: 'Basic Number List',
          inputTexts: [
            Text('numbers = [2, 4, 6, 7.5, 9]'),
          ],
          outputTexts: [],
        ),
        gapH32,
        const Text(
            'You can make a list of any data type in Python, or even mix data types in a list.\n\nSome other features of lists:'),
        const BulletedList(
          points: [
            'Lists are ORDERED, meaning an item\'s position in a list matters',
            'Lists are MUTABLE, meaning you can change them by adding, removing, and editing',
          ],
        ),
      ],
    );
  }
}
