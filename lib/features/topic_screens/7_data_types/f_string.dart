import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class FStringSection extends StatelessWidget {
  const FStringSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'One of the most important string function is the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'f-String (formatted string)',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                '. f-Strings are a way to embed variables and expressions inside a string using curly braces {}. These things are the best.\n\nUsing an f-String is simple: put an "f" at the beginning of your string and then you can start dropping some expressions in there. Look at these examples:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'f-String 1',
          inputTexts: [
            Text('name = "Inigo Montoya"'),
            Text('family_member = "father"'),
            Text('famous_line = f"Hello. My name is {name}. You killed my {family_member}. Prepare to die."'),
            Text('print(famous_line)'),
          ],
          outputTexts: [
            Text('Hello. My name is Inigo Montoya. You killed my father. Prepare to die.'),
          ],
        ),
        gapH32,
        const CodeBlock(
          title: 'f-String 2',
          inputTexts: [
            Text('width = 5'),
            Text('height = 10'),
            Text('area = f"The area of the rectangle is {width * height} square inches"'),
            Text('print(area)'),
          ],
          outputTexts: [
            Text('The area of the rectangle is 50 square inches'),
          ],
        ),
        const CodeBlock(
          title: 'f-String 3',
          inputTexts: [
            Text('text = "don\'t stop"'),
            Text('lyrics = f"{text.upper()} believin\'"'),
            Text('print(lyrics)'),
          ],
          outputTexts: [
            Text('DON\'T STOP believin\''),
          ],
        ),
      ],
    );
  }
}
