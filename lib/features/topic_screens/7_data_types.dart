import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/5_strings.dart';
import 'package:python_class_site/features/widgets/code_block.dart';
import 'package:python_class_site/features/widgets/section_title.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/app_sizes.dart';
import '../widgets/functions.dart';
import '../widgets/long_divider.dart';

class DataTypes extends StatelessWidget {
  const DataTypes({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Data Types & More About Strings';

    return TopicScreen(
      title: title,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DataTypeIntro(),
          gapH32,
          const SectionTitle(title: 'Strings'),
          gapH16,
          const StringDefinition(),
          gapH16,
          Text(
              'We covered basic strings, and assigning a string to a variable, but Python can do a lot more!'),
          gapH32,
          const LongDivider(),
          gapH32,
          const ConcatenationSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const RepetitionSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const IndexingSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const UpperLowercaseSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const ReplaceSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const FStringSection(),
          gapH32,
          const LongDivider(),
          gapH32,
          const Text('There are many, many more things you can do with strings in Python. For a comprehensive list check out the docs:\n'),
          GestureDetector(
              onTap: () => openUrl('https://docs.python.org/3/library/stdtypes.html#str', 'https://docs.python.org/3/library/stdtypes.html#str'),
              child: const Text('https://docs.python.org/3/library/stdtypes.html#str')),
          gapH64,
        ],
      ),
    );
  }
}

class DataTypeIntro extends StatelessWidget {
  const DataTypeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Python ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'data types ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'are different kinds of data you can use in your programs. They include numbers, text, true/false, and more, each designed for specific tasks.\n\nWe\'ll cover some basic data types here to help us write some more interesting programs.\n\n',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '▻ Strings ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'are a list of characters used to represent text. Example: "My name is Earl", "test"\n',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '▻ Int ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text:
                'is an integer, or a whole number with no decimal. Example: 10, -3\n',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '▻ Float ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: 'is a number with a decimal point. Example: 3.14, -2.5\n',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '▻ Boolean (bool) ',
            style: adjustableAccentStyle(width),
          ),
          TextSpan(
            text: 'is a true or false. Example: True, False\n',
            style: adjustableDarkStyle(width),
          ),
        ],
      ),
    );
  }
}

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

class RepetitionSection extends StatelessWidget {
  const RepetitionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Repetition: ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'You can use the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '* ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'operator to repeat a string.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Repetition',
          inputTexts: [
            Text('repeat_string = "Alright " * 3'),
            Text('print(repeat_string)'),
          ],
          outputTexts: [Text('Alright Alright Alright')],
        ),
      ],
    );
  }
}

class IndexingSection extends StatelessWidget {
  const IndexingSection({super.key});

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
                    'You can use access individual characters in a string using ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'indexing.\n\n',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: 'Put a number in ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'brackets [] ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'after your string, and you can grab the character in that position. The first character in a string is position 0, second character is position 1, and so on.\n\nTo grab the first character in the the string "Waldo", I would use the command ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[0]',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text: '. That would return "W". Try it out:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Indexing',
          inputTexts: [
            Text('print("Waldo"[0])'),
          ],
          outputTexts: [Text('W')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'To get the third letter I would use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[2]',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    '. Indexing in code always starts with 0! So the 3rd position is 2 rather than 3.',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'More String Indexing',
          inputTexts: [
            Text('print("Waldo"[2])'),
          ],
          outputTexts: [Text('l')],
        ),
        gapH32,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    'You can also count from the end! To get the last letter I would use ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: '"Waldo"[-1]',
                style: adjustableAccentStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'More String Indexing',
          inputTexts: [
            Text('print("Waldo"[-1])'),
          ],
          outputTexts: [Text('o')],
        ),
        gapH32,
      ],
    );
  }
}

class UpperLowercaseSection extends StatelessWidget {
  const UpperLowercaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'upper and lower ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'methods change the case of the text to ALL UPPERCASE or all lowercase',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'Upper and Lower',
          inputTexts: [
            Text('text1 = "louder"'),
            Text('print(text1.upper())'),
            Text('text2 = "STOP YELLING"'),
            Text('print(text2.lower())'),
          ],
          outputTexts: [
            Text('LOUDER'),
            Text('stop yelling'),
          ],
        ),
      ],
    );
  }
}

class ReplaceSection extends StatelessWidget {
  const ReplaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'The ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'replace ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'method replaces part of your string with another string. Use this: ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'text.replace("string to replace", "new string")',
                style: adjustableCodeDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'String Replace',
          inputTexts: [
            Text('princess = "My favorite princess is Cinderella"'),
            Text('print(princess)'),
            Text('princess.replace("Cinderella", "Elsa"'),
            Text('print(princess)'),
          ],
          outputTexts: [
            Text('My favorite princess is Cinderella'),
            Text('My favorite princess is Elsa'),
          ],
        ),
      ],
    );
  }
}

class FStringSection extends StatelessWidget {
  const FStringSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'One of the most important string function is the ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'f-String (formatted string)',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                '. f-Strings are a way to embed variables and expressions inside a string using curly braces {}. These things are the best.\n\nUsing an f-String is simple: put an "f" at the beginning of your string and then you can start dropping some expressions in there. Look at these examples:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH32,
        const CodeBlock(
          title: 'f-String 1',
          inputTexts: [
            Text('name = "Inigo Montoya"'),
            Text('family_member = "father"'),
            Text('famous_line = f"Hello. My name is {name}. You killed my {family_member}. Prepare to die."'),
            Text('print(famous_line)'),
          ],
          outputTexts: [
            Text('Hello. My name is Inigo Montoya. You killed my father. Prepare to die.'),
          ],
        ),
        gapH32,
        const CodeBlock(
          title: 'f-String 2',
          inputTexts: [
            Text('width = 5'),
            Text('height = 10'),
            Text('area = f"The area of the rectangle is {width * height} square inches"'),
            Text('print(area)'),
          ],
          outputTexts: [
            Text('The area of the rectangle is 50 square inches'),
          ],
        ),
        const CodeBlock(
          title: 'f-String 3',
          inputTexts: [
            Text('text = "don\'t stop"'),
            Text('lyrics = f"{text.upper()} believin\'"'),
            Text('print(lyrics)'),
          ],
          outputTexts: [
            Text('DON\'T STOP believin\''),
          ],
        ),
      ],
    );
  }
}
