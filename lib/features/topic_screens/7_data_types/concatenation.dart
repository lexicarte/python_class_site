import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class ConcatenationSection extends StatelessWidget {
  const ConcatenationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Concatenation ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'is adding strings together to make a new string. Check it out:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Concatenation',
          inputTexts: [
            Text('first_name = "Ron"'),
            Text('last_name = "Swanson"'),
            Text('full_name = first_name + " " + last_name'),
            Text('print(full_name)'),
          ],
          outputTexts: [Text('Ron Swanson')],
        ),
        gapH32,
        const CodeBlock(
          title: 'String Concatenation with Inputs',
          inputTexts: [
            Text('name = input("Enter your name: ")'),
            Text('age = input("Enter your age: ")'),
            Text(
                'message = "Hello, " + name + "! You are " + age + " years old."'),
            Text('print(message)'),
          ],
          outputTexts: [
            Text('Enter your name: Bilbo'),
            Text('Enter your age: 111'),
            Text('Hello, Bilbo! You are 111 years old.')
          ],
        ),
      ],
    );
  }
}
