import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LongDivider extends StatelessWidget {
  const LongDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Divider(
        color: kMainAccentColor, indent: width * .1, endIndent: width * .1);
  }
}
