import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';
import 'package:python_class_site/features/widgets/coding_activity.dart';
import 'package:python_class_site/features/widgets/coding_activity_example.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../../providers.dart';
import '../widgets/functions.dart';

class Strings extends StatelessWidget {
  const Strings({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    String title = 'Basic Strings';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StringDefinition(),
          gapH32,
          const BasicStringCodeBlock(),
          gapH32,
          Text(
              'We will learn A LOT more about strings when we discuss Python data types.',
              style: adjustableDarkStyle(width)),
          gapH32,
          const RecipeActivity(),
          gapH64,
        ],
      ),
    );
  }
}

class RecipeActivity extends StatelessWidget {
  const RecipeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CodingActivity(
      title: 'PRINTING STRINGS',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Write a program to print a cooking recipe.',
            style: adjustableDarkStyle(width),
          ),
          gapH8,
          Text(
            'Each ingredient should be on one print line, and each cooking instruction on one print line.',
            style: adjustableDarkStyle(width),
          ),
          gapH8,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Save your code! ',
                  style: adjustableAccentStyle(width),
                ),
                TextSpan(
                  text:
                      'We\'re going to come back later and make it even better',
                  style: adjustableDarkStyle(width),
                ),
              ],
            ),
          ),
          gapH32,
          CodingActivityExample(
            isOpenProvider: recipeActivityIsExpandedProvider,
            title: 'Recipe Activity',
            inputTexts: const [
              Text('print(\'1 can whole peeled tomatoes\')'),
              Text('print(\'1 white onion, chopped\')'),
              Text('print(\'2-3 serrano peppers, chopped\')'),
              Text('print(\'1 clove garlic, chopped\')'),
              Text('print(\'1 1/2 tsp cumin\')'),
              Text('print(\'1 tsp salt\')'),
              Text('print(\'1 tsp sugar\')'),
              Text('print(\'1 handful of cilantro\')'),
              Text('print(\'Juice from 1 lime\')'),
              Text('print(\'Add ingredients to a blender in order. Blend to desired consistency.\')'),
            ],
            outputTexts: const [
              Text('1 can whole peeled tomatoes'),
              Text('1 white onion, chopped'),
              Text('2-3 serrano peppers, chopped'),
              Text('1 clove garlic, chopped'),
              Text('1 1/2 tsp cumin'),
              Text('1 tsp salt'),
              Text('1 tsp sugar'),
              Text('1 handful of cilantro'),
              Text('Juice from 1 lime'),
              Text('Add ingredients to a blender in order. Blend to desired consistency.'),
            ],
          ),
        ],
      ),
    );
  }
}

class StringDefinition extends StatelessWidget {
  const StringDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'A ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'string ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'is a list of characters used to represent text. You can define a string using single quotes (\') or double quotes ("). Feel free to use either, but be consistent.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class BasicStringCodeBlock extends StatelessWidget {
  const BasicStringCodeBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CodeBlock(
      title: 'A Basic String',
      inputTexts: [
        Text('print(\'This is a simple string\')\n'),
        Text('print("This is also a string")\n'),
        Text('print(\'A \$tr!ng c@n contain a!! k(nd\$ of ch#r#cters\')')
      ],
      outputTexts: [
        Text('This is a simple string\n'),
        Text('This is also a string\n'),
        Text(
          'A \$tr!ng c@n con+ain a!! k(nd\$ of ch#r#cters',
        ),
      ],
    );
  }
}
