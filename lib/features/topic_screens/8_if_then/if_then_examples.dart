import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class IfThenExamples extends StatelessWidget {
  const IfThenExamples({super.key});

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
                    'Back to if-then statements. Here is an if-then example. In this code, the variable "age" is set to 21. The if-then statement then checks the value of age (age is the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'condition',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    '). The condition starts with an "if" and ends with a ":".\n\nIf age is greater than or equal to 21, the program runs the indented code. In this case the program prints "You can enter." Here is the code:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const CodeBlock(
          title: 'If-Then Age',
          inputTexts: [
            Text('age = 21'),
            Text(''),
            Text('if age >= 21:'),
            Text('    print("You can enter.")'),
          ],
          outputTexts: [
            Text('You can enter.'),
          ],
        ),
        gapH32,
        const Text('Let\'s do an example that includes some user interaction. In the example below, the user enters a number and the code will tell if it is positive.'),
        gapH32,
        const CodeBlock(
          title: 'If-Then Positive',
          inputTexts: [
            Text('user_input = input("Enter a number: ")'),
            Text('number = float(user_input)'),
            Text('if number > 0:'),
            Text('    print("The number is positive.")'),
          ],
          outputTexts: [
            Text('Enter a number: 9'),
            Text('The number is positive.'),
          ],
        ),
      ],
    );
  }
}
