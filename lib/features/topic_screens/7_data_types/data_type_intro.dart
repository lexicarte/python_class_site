import 'package:flutter/material.dart';

import '../../widgets/functions.dart';

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
