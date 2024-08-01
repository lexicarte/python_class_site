import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/code_block.dart';
import 'package:python_class_site/features/widgets/coding_activity.dart';
import 'package:python_class_site/features/widgets/coding_activity_example.dart';
import 'package:python_class_site/features/widgets/play_with_ai.dart';
import 'package:python_class_site/features/widgets/section_title.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../../providers.dart';
import '../widgets/bulleted_list.dart';
import '../widgets/functions.dart';

class Variables extends StatelessWidget {
  const Variables({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Variables & User Input';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VariableDefinition(),
          gapH32,
          const ReassignVariableCode(),
          gapH32,
          const Text('Some things to keep in mind with variables:'),
          BulletedList(points: variableKeyPoints),
          gapH32,
          const Text(
              'You can change the value stored in a variable by giving it a new value.'),
          gapH32,
          const ReassignVariableCode(),
          gapH32,
          const Text(
              'You can hold all types of data in a variable, but we\'ll get more into data types later..'),
          gapH64,
          const SectionTitle(title: 'User Input'),
          gapH16,
          const InputDefinition(),
          gapH32,
          const Text(
              'When you use the input function, your program will pause and wait for the user to type something and press the Enter key. The text that the user types can be stored as a variable and used later.\n\nHere is an example:'),
          gapH32,
          const UserInputCodeBlock(),
          gapH32,
          const UserInfoActivity(),
          gapH32,
          const BandNameGeneratorActivity(),
          gapH64,
          const PlayWithAi(),
          gapH64,
        ],
      ),
    );
  }
}

class VariableDefinition extends StatelessWidget {
  const VariableDefinition({super.key});

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
            text: 'variable ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'is like a container that holds a value. You can give this container a name and use it to store data that you want to use later in your program.\n\nA variable is assigned using the ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '= ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: 'operator.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class BasicVariableCode extends StatelessWidget {
  const BasicVariableCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const CodeBlock(
      title: 'Basic Variable',
      inputTexts: [
        Text('name = \'Jane\''),
        Text('age = 25'),
        Text('print(name)'),
        Text('print(age)'),
      ],
      outputTexts: [
        Text('Jane'),
        Text('25'),
      ],
    );
  }
}

List<String> variableKeyPoints = [
  'Variable names can contain letters, numbers, and underscores (_), but they must start with a letter or an underscore',
  'Variable names are case-sensitive, so "name" and "Name" would be considered different variables',
  'It\'s a good practice to use meaningful names that describe the data they hold',
];

class ReassignVariableCode extends StatelessWidget {
  const ReassignVariableCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const CodeBlock(
      title: 'Reassign a Variable',
      inputTexts: [
        Text('age = 25'),
        Text('age = 30'),
        Text('print(age)'),
      ],
      outputTexts: [Text('30')],
    );
  }
}

class InputDefinition extends StatelessWidget {
  const InputDefinition({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text:
                'Sometimes you need information from the user to make a program work. The ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'input ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: 'function in Python is used to get that information.',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

class UserInputCodeBlock extends StatelessWidget {
  const UserInputCodeBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CodeBlock(
      title: 'User Input',
      inputTexts: [
        Text('name = input("What is your name? ")'),
        Text('# User types their name and presses enter'),
        Text('print(name)'),
      ],
      outputTexts: [
        Text('What is your name? Michael Scott'),
        Text('Michael Scott'),
      ],
    );
  }
}

class UserInfoActivity extends StatelessWidget {
  const UserInfoActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CodingActivity(
          title: 'USER CONTACT INFO',
          body: Column(
            children: [
              const Text(
                'Write a program to get basic user contact information. Store each piece of information in variable (with a descriptive name!). Then print each piece of contact information on a separate line.',
              ),
              gapH32,
              CodingActivityExample(
                isOpenProvider: userInputActivityIsExpandedProvider,
                title: 'User Data Activity',
                inputTexts: const [
                  Text('name = input("What is your name? ")'),
                  Text('address = input("What is your address? ")'),
                  Text('phone = input("What is your phone number? ")'),
                  Text('email = input("What is your email? ")'),
                  Text('print(name)'),
                  Text('print(address)'),
                  Text('print(phone)'),
                  Text('print(email)'),
                ],
                outputTexts: const [
                  Text('What is your name? Sherlock Holmes'),
                  Text(
                      'What is your address? 221B Baker Street, London, England'),
                  Text('What is your phone number? 555-123-4567'),
                  Text(
                      'What is your email? consulting.detective@elementary.co.uk\n'),
                  Text('Sherlock Holmes'),
                  Text('221B Baker Street, London, England'),
                  Text('555-123-4567'),
                  Text('consulting.detective@elementary.co.uk'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BandNameGeneratorActivity extends StatelessWidget {
  const BandNameGeneratorActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CodingActivity(
          title: 'BAND NAME GENERATOR',
          body: Column(
            children: [
              const Text(
                'Write a program to generate an awesome band name.\n\nCollect two inputs from the user and store them as variables: the name of a pet and a type of weather.\n\nCombine the variables into a single line of text and print it. We\'ll need to learn how to do this first:\n',
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'You can combine, or ',
                      style: adjustableDarkStyle(width),
                    ),
                    TextSpan(
                      text: 'concatenate ',
                      style: adjustableAccentStyle(width),
                    ),
                    TextSpan(
                      text:
                          'text in Python using the ',
                      style: adjustableDarkStyle(width),
                    ),
                    TextSpan(
                      text: '+ ',
                      style: adjustableAccentStyle(width),
                    ),
                    TextSpan(
                      text:
                      'operator. Try this:\n',
                      style: adjustableDarkStyle(width),
                    ),
                  ],
                ),
              ),
              Text(
                'first_name = "Jane"\nlast_name = "Eyre"\nfull_name = first_name + " " + last_name\nprint(full_name)\nJane Eyre\n',
                style: adjustableCodeDarkStyle(width),
              ),
              const Text(
                  'Note that you have to add the extra space (" ") so the names don\'t run together.\n'),
              const Text(
                  'Now you area ready to try this with the band name generator. Give it a try!'),
              gapH32,
              CodingActivityExample(
                isOpenProvider: bandNameActivityIsExpandedProvider,
                title: 'Band Name Generator',
                inputTexts: const [
                  Text('name_of_a_pet = input("Name of a pet: ")'),
                  Text('type_of_weather = input("Type of weather: ")'),
                  Text('band_name = name_of_a_pet + " " + type_of_weather'),
                  Text('print(band_name)'),
                ],
                outputTexts: const [
                  Text('Name of a pet: Fido'),
                  Text('Type of weather: Thunder'),
                  Text('Fido Thunder'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
