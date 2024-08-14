import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/coding_activity.dart';

import '../../../constants/app_sizes.dart';
import '../../../providers.dart';
import '../../widgets/coding_activity_example.dart';
import '../../widgets/functions.dart';

class ElifActivity extends StatelessWidget {
  const ElifActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CodingActivity(
      title: 'WEATHER TRANSLATOR',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Write a program that takes the temperature as an input, and then prints a description of the weather.',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          Text(
            'The description should be different depending on the temperature. For example, if the temperature is above 90 degrees it could print "It\'s REALLY hot out today."',
            style: adjustableDarkStyle(width),
          ),
          gapH16,
          Text(
            'Hint: The code could be very similar to score checking example.',
            style: adjustableDarkStyle(width),
          ),
          gapH32,
          CodingActivityExample(
            isOpenProvider: weatherTranslatorActivityIsExpandedProvider,
            title: 'Weather Translator',
            inputTexts: const [
              Text('user_input = input("What is the temperature?: ")\n'),
              Text('temp_in_f = int(user_input)'),
              Text('if temp_in_f >= 90:'),
              Text('    print("It\'s REALLY hot out today")'),
              Text('elif temp_in_f >= 70:'),
              Text('    print("It\'s pretty warm out today")'),
              Text('elif temp_in_f >= 50:'),
              Text('    print("It\'s cool out today, you may need a jacket")'),
              Text('else:'),
              Text('    print("It\'s cold today, just stay home")'),
            ],
            outputTexts: const [
              Text('What is the temperature?: 72'),
              Text('It\'s pretty warm out today'),
            ],
          ),
        ],
      ),
    );
  }
}
