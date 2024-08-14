import 'package:flutter/material.dart';

import '../../../constants/app_sizes.dart';
import '../../../providers.dart';
import '../../widgets/coding_activity.dart';
import '../../widgets/coding_activity_example.dart';
import '../../widgets/functions.dart';

class TempConverter extends StatelessWidget {
  const TempConverter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CodingActivity(
      title: 'TEMPERATURE CONVERTER',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Write a program to convert the temperature from Fahrenheit to Celsius.',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          Text(
            'The program will take a number (a float) as an input representing the temperature in F. It will calculate the conversion to C, and print the Celsius value to the console, rounded to 2 decimal places.',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          Text(
            'Hint: The conversion formula for F to C is: ',
            style: adjustableDarkStyle(width),
          ),
          Text(
            'C = 5/9(F-32)',
            style: adjustableCodeDarkStyle(width),
          ),
          gapH16,
          Text(
            'IMPORTANT!: When you use input() to get information from the user it is always returned as a string. You can convert the user input string to an int using the int() function, like this: ',
            style: adjustableDarkStyle(width),
          ),
          Text(
            'int("7")  # returns 7 as an int',
            style: adjustableCodeDarkStyle(width),
          ),
          gapH32,
          CodingActivityExample(
            isOpenProvider: tempConvActivityIsExpandedProvider,
            title: 'Temperature Converter',
            inputTexts: const [
              Text('user_input = input("What is the temperature in F?: ")'),
              Text('temp_in_f = int(user_input)'),
              Text('temp_in_c = 5/9(temp_in_f-32)'),
              Text('formatted_temp = f"{temp_in_c:.2f}"'),
              Text('print(formatted_temp)'),
            ],
            outputTexts: const [
              Text('What is the temperature in F?: 70'),
              Text('21.11'),
            ],
          ),
        ],
      ),
    );
  }
}
