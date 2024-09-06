import 'package:flutter/material.dart';
import 'package:python_class_site/features/widgets/bulleted_list.dart';
import 'package:python_class_site/features/widgets/code_block.dart';

import '../../../constants/app_sizes.dart';
import '../../widgets/functions.dart';

class LoopIntro extends StatelessWidget {
  const LoopIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Text('This is where code can get really powerful.'),
        gapH16,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A ',
                style: adjustableDarkStyle(width),
              ),
              TextSpan(
                text: 'loop ',
                style: adjustableAccentStyle(width),
              ),
              TextSpan(
                text:
                    'is a way of repeating instructions over and over. It\'s like telling the computer "Keep doing this until I tell you to stop." This is useful when you want to do the same thing over and over again, such as:',
                style: adjustableDarkStyle(width),
              ),
            ],
          ),
        ),
        gapH16,
        const BulletedList(
          points: [
            'Printing numbers in a sequence',
            'Repeating an action a certain number of times',
            'Going through items in a list',
          ],
        ),
        gapH16,
        const Text('The basic format of a loop looks like this:'),
        gapH32,
        const CodeBlock(
          title: 'Basic Loop',
          inputTexts: [
            Text('for object in group:'),
            Text('    # Do something'),
          ],
          outputTexts: [],
        ),
        gapH32,
        const Text(
            'Loop format is not always intuitive, so let\'s break it down:'),
        gapH16,
        const BulletedList(
          points: [
            'for: A Python keyword that indicates that this is going to be a loop',
            'object: A new variable that represents an individual object in the loop. You can name the variable anything you like. For example, if I were going to loop through my list of superpowers I would name my object "superpower" (the singular version of "superpowers"), representing a single superpower. If you are looping through a range of numbers, the object is often noted as "i".',
            'in: A Python keyword specifying that the next thing is going to be the group of objects we\'re going to loop through',
            'group: The list that you\'re looping through. This could be an actual list, or a variable that holds a list.',
            'Do something: Code that will run for each item in the list. The simplest loop would be to print the name of each object (i.e. print(superpower)).',
          ],
        ),
        gapH32,
        const Text(
            'So looping through our superpower list and printing each superpower would look like this:'),
        gapH32,
        const CodeBlock(
          title: 'Superpower Loop',
          inputTexts: [
            Text(
                'superpowers = ["flying", "strength", "invisibility", "laser eyes", "spidey sense"]\n'),
            Text('for superpower in superpowers:'),
            Text('    print(superpower)'),
          ],
          outputTexts: [
            Text('flying'),
            Text('strength'),
            Text('invisibility'),
            Text('laser eyes'),
            Text('spidey sense'),
          ],
        ),
        gapH32,
        const Text('If we power up our loop a bit we can add to each item in the list:'),
        gapH32,
        const CodeBlock(
          title: 'Superpower Loop',
          inputTexts: [
            Text(
                'superpowers = ["flying", "strength", "invisibility", "laser eyes", "spidey sense"]\n'),
            Text('for superpower in superpowers:'),
            Text('    print(superpower + " power")'),
          ],
          outputTexts: [
            Text('flying power'),
            Text('strength power'),
            Text('invisibility power'),
            Text('laser eyes power'),
            Text('spidey sense power'),
          ],
        ),
      ],
    );
  }
}
