import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class IndexingSection extends StatelessWidget {
  const IndexingSection({super.key});

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
                'You can use access individual characters in a string using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'indexing.\n\n',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Put a number in ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'brackets [] ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'after your string, and you can grab the character in that position. The first character in a string is position 0, second character is position 1, and so on.\n\nTo grab the first character in the the string "Waldo", I would use the command ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[0]',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: '. That would return "W". Try it out:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Indexing',
          inputTexts: [
            Text('print("Waldo"[0])'),
          ],
          outputTexts: [Text('W')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'To get the third letter I would use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[2]',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                '. Indexing in code always starts with 0! So the 3rd position is 2 rather than 3.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'More String Indexing',
          inputTexts: [
            Text('print("Waldo"[2])'),
          ],
          outputTexts: [Text('l')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                'You can also count from the end! To get the last letter I would use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[-1]',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'More String Indexing',
          inputTexts: [
            Text('print("Waldo"[-1])'),
          ],
          outputTexts: [Text('o')],
        ),
        gapH32,
      ],
    );
  }
}
