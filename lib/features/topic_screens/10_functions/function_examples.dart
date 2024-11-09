import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/code_block.dart';
import '../../widgets/functions.dart';

class FunctionExamples extends StatelessWidget {
  const FunctionExamples({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          'Try this one! Try to duplicate this code and see if you can figure out what the "image" is. This is called ASCII art, and is a hobby of nerds everywhere.',
          style: adjustableDarkStyle(width),
        ),
        gapH32,
        const CodeBlock(
          title: 'ASCII Art',
          inputTexts: [
            Text('def cat():'),
            Text('    print(" /\\_/\\ ")'),
            Text('    print("( 0.0 )")'),
            Text('    print(" > ^ < ")\n'),
            Text('cat()'),
            Text('cat()'),
            Text('cat()'),
          ],
          outputTexts: [
            Text(' /\\_/\\ '),
            Text('( 0.0 )'),
            Text(' > ^ < '),
            Text(' /\\_/\\ '),
            Text('( 0.0 )'),
            Text(' > ^ < '),
            Text(' /\\_/\\ '),
            Text('( 0.0 )'),
            Text(' > ^ < '),
          ],
        ),
        gapH64,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Functions can be even more useful when they can receive an input, or ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'parameter',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                '. A parameter is just a piece of information you want the function to be able to use.\n\nLet\'s make a function that greets someone by name:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Greeting with a parameter',
          inputTexts: [
            Text('def greet(name):'),
            Text('    print(f"Hello, {name}!")\n'),
            Text('greet("Quincy")'),
          ],
          outputTexts: [
            Text('Hello, Quincy!'),
          ],
        ),
        gapH64,
        Text(
          'You can add any number of parameters to your function. Let\'s use TWO parameters and see what we can do with that.\n\nThis function takes two numbers as parameters, adds them together, and prints the result.',
          style: adjustableDarkStyle(width),
        ),
        gapH32,
        const CodeBlock(
          title: 'Two Parameter Math',
          inputTexts: [
            Text('def add(a, b):'),
            Text('    c = a + b'),
            Text('    print(c)\n'),
            Text('add(3, 4)'),
          ],
          outputTexts: [
            Text('7'),
          ],
        ),
        gapH64,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'More often than not you need your function to give back a value you can use, rather than just printing something to the console. In that case, you end your function with a ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'return ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                'value. Anything after the "return" keyword is what the function sends back.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Two Parameter Math with Return',
          inputTexts: [
            Text('def add(a, b):'),
            Text('    c = a + b'),
            Text('    return c\n'),
            Text('add(3, 4)'),
          ],
          outputTexts: [
            Text(''),
          ],
        ),
        gapH64,
        Text(
          'Where was the output? Since there was no "print" line, the computer performed the function but you could not see it. Try wrapping the function call in a print statement and see what happens.\n\nThese were simple examples but you can do anything inside of a function. Let\'s think outside the box and do something you have already learned and wrap it in a function.',
          style: adjustableDarkStyle(width),
        ),
        gapH32,
      ],
    );
  }
}


