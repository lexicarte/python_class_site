import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ShortDivider extends StatelessWidget {
  const ShortDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Divider(
        color: kMainAccentColor, indent: width * .3, endIndent: width * .3);
  }
}
