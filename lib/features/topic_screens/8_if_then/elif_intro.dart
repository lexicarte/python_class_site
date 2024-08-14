import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class ElifIntro extends StatelessWidget {
  const ElifIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You can make more complex if-then statements using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'elif ("short for else-if")',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: '. Elif allows you to check for a lot of different conditions. If the first condition is false the program goes to the next one, and on and on until it finds a true statement. If no statements are true the program will run the "else" statement, if it exists. If the program doesn\'t find anything true, nothing happens.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const Text('This code block checks a score against different conditions to see what letter grade that score receives.'),
        gapH32,
        const CodeBlock(
          title: 'Elif Structure',
          inputTexts: [
            Text('score = 85\n'),
            Text('if score >= 90:'),
            Text('    print("You got an A.")'),
            Text('elif score >= 80'),
            Text('    print("You got a B.")'),
            Text('elif score >= 70'),
            Text('    print("You got a c.")'),
            Text('else:'),
            Text('    print("Try harder.")'),
          ],
          outputTexts: [Text('You got a B.')],
        ),
      ],
    );
  }
}

