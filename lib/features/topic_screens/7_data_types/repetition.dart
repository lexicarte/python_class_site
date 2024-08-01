import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class RepetitionSection extends StatelessWidget {
  const RepetitionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Repetition: ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'You can use the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '* ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operator to repeat a string.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Repetition',
          inputTexts: [
            Text('repeat_string = "Alright " * 3'),
            Text('print(repeat_string)'),
          ],
          outputTexts: [Text('Alright Alright Alright')],
        ),
      ],
    );
  }
}
