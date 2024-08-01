import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class ReplaceSection extends StatelessWidget {
  const ReplaceSection({super.key});

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
                text: 'replace ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'method replaces part of your string with another string. Use this: ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'text.replace("string to replace", "new string")',
                style: adjustableCodeDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Replace',
          inputTexts: [
            Text('princess = "My favorite princess is Cinderella"'),
            Text('print(princess)'),
            Text('princess.replace("Cinderella", "Elsa"'),
            Text('print(princess)'),
          ],
          outputTexts: [
            Text('My favorite princess is Cinderella'),
            Text('My favorite princess is Elsa'),
          ],
        ),
      ],
    );
  }
}
