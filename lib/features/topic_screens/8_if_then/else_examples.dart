import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';

class ElseExamples extends StatelessWidget {
  const ElseExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
            'Let\'s expand on the positive number example above so that it give a message if the number is NOT positive.'),
        gapH32,
        CodeBlock(
          title: 'If-Else Positive',
          inputTexts: [
            Text('user_input = input("Enter a number: ")'),
            Text('number = float(user_input)'),
            Text('if number > 0:'),
            Text('    print("The number is positive.")'),
            Text('else:'),
            Text('    print("The number is not positive.")'),
          ],
          outputTexts: [
            Text('Enter a number: 9'),
            Text('The number is positive.\n'),
            Text('Enter a number: -22'),
            Text('The number is not positive.'),
          ],
        ),
      ],
    );
  }
}
