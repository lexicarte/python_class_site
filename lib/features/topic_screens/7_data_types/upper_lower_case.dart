import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class UpperLowercaseSection extends StatelessWidget {
  const UpperLowercaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'upper and lower ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'methods change the case of the text to ALL UPPERCASE or all lowercase',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Upper and Lower',
          inputTexts: [
            Text('text1 = "louder"'),
            Text('print(text1.upper())'),
            Text('text2 = "STOP YELLING"'),
            Text('print(text2.lower())'),
          ],
          outputTexts: [
            Text('LOUDER'),
            Text('stop yelling'),
          ],
        ),
      ],
    );
  }
}
