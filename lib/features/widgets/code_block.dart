import 'package:flutter/material.dart';
import 'package:python_class_site/constants/text_styles.dart';

import '../../constants/app_sizes.dart';
import '../../constants/colors.dart';
import 'functions.dart';

class CodeBlock extends StatelessWidget {
  const CodeBlock(
      {super.key, required this.title, required this.inputTexts, required this.outputTexts});

  final String title;
  final List<Text> inputTexts;
  final List<Text> outputTexts;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTextStyle(
      style: adjustableCodeDarkStyle(width),
      child: Column(
        children: [
          Text('Code Example: $title', style: adjustableDarkTitleStyle(width)),
          gapH4,
          Stack(
            children: [
              Container(
                color: kMainAccentColor.withOpacity(.1),
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: inputTexts,
                ),
              ),
              Positioned(
                top: 8,
                right: 12,
                child: Text(
                  'INPUT',
                  style: kTextTitleDark16.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                color: kMainAccentColor.withOpacity(.30),
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: outputTexts,
                ),
              ),
              Positioned(
                top: 8,
                right: 12,
                child: Text(
                  'OUTPUT',
                  style: kTextTitleDark16.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
