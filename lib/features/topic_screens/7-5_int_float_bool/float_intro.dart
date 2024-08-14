import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class FloatIntro extends StatelessWidget {
  const FloatIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'float (short for "floating point number") ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'is a data type used to represent a number that has a decimal point. Floats are used with calculations that require precision.\n\nAll of the math operators (+, -, *, /) we learned in the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'int ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'section also apply to floats.\n\nFloats will often show up as really long numbers in the console, since some calculations result in infinitely long numbers (like 1/3 is 3.33333333 and so on). So it is important to know how to format a float to limit the number of decimals it shows.\n\nYou can format a decimal using an ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'f-String:',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Float Formatting',
          inputTexts: [
            Text('pi = 3.141592653589793'),
            Text('formatted_pi = f"{pi:.2f}"'),
            Text('print(formatted_p)'),
          ],
          outputTexts: [Text('3.14')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: ':.2f ',
                style: adjustableCodeDarkStyle(width),
              ),
              TextSpan(
                text: 'notation tells the code to only show 2 numbers past the decimal. You could change it to .3f for 3 numbers past the decimal, and so on.\n\nNow that you know all this new stuff, let\'s put it to use!',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
