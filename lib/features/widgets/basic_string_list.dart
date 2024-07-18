import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';

class BasicList extends StatelessWidget {
  const BasicList({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          child: Text(item, style: kTextDark28, textAlign: TextAlign.center),
        );
      }).toList(),
    );
  }
}
