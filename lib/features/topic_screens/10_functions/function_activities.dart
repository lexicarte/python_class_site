import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/coding_activity.dart';

import '../../../constants/app_sizes.dart';
import '../../../providers.dart';
import '../../widgets/coding_activity_example.dart';
import '../../widgets/functions.dart';

class FunctionActivities extends StatelessWidget {
  const FunctionActivities({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CodingActivity(
          title: 'GREET THE CLASS',
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Write a program that greets everyone in the class.',
                style: adjustableDarkStyle(width),
              ),
              gapH8,
              Text(
                'Create a list with the name of each person in class. Create function that takes a name as a parameter and prints a greeting with the name. Then loop through the list, and call the function each time it loops.',
                style: adjustableDarkStyle(width),
              ),
              gapH32,
              CodingActivityExample(
                isOpenProvider: functionActivityIsExpandedProvider,
                title: 'Function Activity',
                inputTexts: const [
                  Text('names = ["Jimbo", "Kearney", "Dolph", "Nelson"]\n'),
                  Text('def greet(name):'),
                  Text('    print(f"Hello, {name}")\n'),
                  Text('for name in names:'),
                  Text('    greet(name)'),
                ],
                outputTexts: const [
                  Text('Hello, Jimbo'),
                  Text('Hello, Kearney'),
                  Text('Hello, Dolph'),
                  Text('Hello, Nelson'),
                ],
              ),
            ],
          ),
        ),
        gapH32,
        CodingActivity(
          title: 'SUPER TEMP CONVERTER',
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Write a program that converts temperature from C to F and F to C.',
                style: adjustableDarkStyle(width),
              ),
              gapH16,
              Text(
                'Instructions: Create a function that takes a temperature as an input, converts the temp to C, and returns the temp in C. Write another function that converts to F and returns the temp in F.\n\nGet input from the user for the temp (converted to a float!), and whether they want a conversion to F or C.\n\nWrite an if-then statement that correctly converts to F if they choose F, and C if they choose C.\n\nThe equation for converting F to C is: C = (F - 32) x 5/9\nThe equation for converting C to F is: F = C x (9/5) + 32)\n\nTo test your code: 79 F is 26.11 C',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
