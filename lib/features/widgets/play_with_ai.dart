import 'package:flutter/material.dart';
import 'package:python_class_site/constants/colors.dart';
import 'package:python_class_site/features/widgets/bulleted_list.dart';
import 'package:python_class_site/features/widgets/functions.dart';

import '../../constants/app_sizes.dart';

class PlayWithAi extends StatelessWidget {
  const PlayWithAi({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: kMainAccentColor),
        color: kMainAccentColor.withOpacity(0.03),
      ),
      child: Column(
        children: [
          Text('BONUS: Let\'s play with AI', style: adjustableAccentLargeTitleStyle(width)),
          gapH32,
          const BulletedList(
            points: [
              'Go to https://chatgpt.com',
              'Type the following in the prompt: "write code in python to get user contact information and store them as variables"',
              'How does the AI code compare with yours?',
              'Type the following in the prompt: "explain each line of code in simple terms"',
              'Read through the explanation. Did you learn anything new?',
              'Copy and paste your own code into the prompt and then type "simplify this code"',
              'Was the AI able to simplify your code? What changes did it make?',
            ],
          ),
        ],
      ),
    );
  }
}
