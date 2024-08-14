import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class ElseIntro extends StatelessWidget {
  const ElseIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'You can use an ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'else ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'statement to run code when the "if" statement is false. Think of the if-else statement as "if this or else this other thing". The "else" statement comes after the "if" statement. The "else:" is not indented, but the code that will run IS indented. Like this:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'If-Else Structure',
          inputTexts: [
            Text('if condition:'),
            Text('    # Code to execute if true'),
            Text('else:'),
            Text('    # Code to execute if NOT true'),
          ],
          outputTexts: [],
        ),
      ],
    );
  }
}
