import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';
import 'package:python_class_site/features/widgets/functions.dart';

import '../../../constants/app_sizes.dart';

class ListManipulation extends StatelessWidget {
  const ListManipulation({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Text(
            'Once you have a list, you can access items, change them, add new items, remove items, and loop through the list.\n\nWe\'re going to take this a list and manipulate in all different ways. Here is our list:'),
        gapH16,
        Text(
          'superpowers = ["flying", "strength", "speed", "invisibility", "x-ray vision"]',
          style: adjustableCodeDarkStyle(width),
        ),
        gapH16,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'To access an item in a list ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'you use the item\'s ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'index.',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const Text(
            'Remember, the index of an item is it\'s position in the list, starting at 0. So the first item on the list, "flying", is at index 0, the second item, "strength" is at index 1, and so on.\n\nTo access an item you use the name of the list, followed by the index number in brackets, like this:'),
        gapH32,
        const CodeBlock(
          title: 'Access an item',
          inputTexts: [
            Text('best_superpower = superpowers[0]'),
            Text('print(best_superpower)'),
          ],
          outputTexts: [
            Text('flying'),
          ],
        ),
        gapH32,
        const CodeBlock(
          title: 'Access another item',
          inputTexts: [
            Text('worst_superpower = superpowers[4]'),
            Text('print(worst_superpower)'),
          ],
          outputTexts: [
            Text('x-ray vision'),
          ],
        ),
        gapH32,
        const Text('X-ray vision is kind of lame since x-rays can\'t really see through walls, so what if I want to change it? You can change an item like this:'),
        gapH32,
        const CodeBlock(
          title: 'Change an item',
          inputTexts: [
            Text('superpowers[4] = "laser eyes"'),
            Text('print(superpowers[4])'),
          ],
          outputTexts: [
            Text('laser eyes'),
          ],
        ),
        gapH32,
        const Text('What if there are more superpowers I need to add to my list? You can add to a list using the APPEND command, like this:'),
        gapH32,
        const CodeBlock(
          title: 'Add to a list',
          inputTexts: [
            Text('superpowers.append("spidey sense")'),
            Text('print(superpowers)'),
          ],
          outputTexts: [
            Text('["flying", "strength", "speed", "invisibility", "laser eyes", "spidey sense"]'),
          ],
        ),
        gapH32,
        const Text('Similarly, you can remove an item using the REMOVE command and the name of the item:'),
        gapH32,
        const CodeBlock(
          title: 'Remove from a list',
          inputTexts: [
            Text('superpowers.remove("speed")'),
            Text('print(superpowers)'),
          ],
          outputTexts: [
            Text('["flying", "strength", "invisibility", "laser eyes", "spidey sense"]'),
          ],
        ),
      ],
    );
  }
}
