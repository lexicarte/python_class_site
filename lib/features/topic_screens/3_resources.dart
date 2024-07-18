import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:python_class_site/features/widgets/topic_screen.dart';

import '../../constants/app_sizes.dart';
import '../widgets/linked_list_item.dart';
import '../widgets/section_title.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    String title = 'Resources';

    return TopicScreen(
      title: title,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'For this class'),
          LinkedListItem(
            title: 'Python',
            description:
                'Download Python, get the actual documentation, and free tutorials.',
            link: 'https://www.python.org',
          ),
          gapH16,
          LinkedListItem(
            title: 'PyCharm',
            description:
                'Free and powerful Integrated Development Environment (IDE). Helps to make coding more intuitive.',
            link: 'https://www.jetbrains.com/pycharm/',
          ),
          gapH16,
          LinkedListItem(
            title: 'replit',
            description:
            'Online coding environment. Great for testing code snippets. We will use it in this class to learn coding concepts and practice.',
            link: 'https://replit.com',
          ),
          gapH16,
          LinkedListItem(
            title: 'Snippets Lab',
            description:
            'Optional. For keeping code snippets, writing notes, and organizing your learning. There are many similar options, just pick one and go with it!',
            link: 'https://www.renfei.org/snippets-lab/',
          ),
          gapH32,
          SectionTitle(title: 'For Python in general'),
          LinkedListItem(
            title: 'Python Docs',
            description:
            'The official Python documentation is extensive and useful.',
            link: 'https://docs.python.org/3/',
          ),
          gapH16,
          LinkedListItem(
            title: 'Stack Overflow',
            description:
            'Every question that has ever been asked about coding is here. After the official docs, this is the best source for questions.',
            link: 'https://stackoverflow.com',
          ),
          gapH16,
          LinkedListItem(
            title: 'W3 Schools',
            description:
            'Simplified Python documentation and free tutorials.',
            link: 'https://www.w3schools.com/python/default.asp',
          ),
          gapH16,
          LinkedListItem(
            title: 'Udemy',
            description:
            'High quality online courses. Not free, but typically about \$15.',
            link: 'https://www.udemy.com',
          ),
          gapH16,
          LinkedListItem(
            title: 'ChatGPT',
            description:
            'Conversational AI that can write, check, and simplify code. Not always 100% accurate, but a great way to start a new project or help with pesky errors.',
            link: 'https://chatgpt.com',
          ),
          gapH32,
        ],
      ),
    );
  }
}
