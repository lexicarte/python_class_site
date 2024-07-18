import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'functions.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: Container(
            color: kMainAccentColor,
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            margin: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              title,
              style: adjustableLightStyle(width),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
