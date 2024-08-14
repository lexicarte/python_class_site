import 'package:flutter/material.dart';

import '../../widgets/functions.dart';

class OtherUses extends StatelessWidget {
  const OtherUses({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'We use integers in the String section when we learned about indexing (Ex: ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: '"Waldo[1]" ',
            style: adjustableCodeDarkStyle(width),
          ),
          TextSpan(
            text: 'uses the int "1" as an index to get the second character in the string). We will get into other uses for integers when we learn about ',
            style: adjustableDarkStyle(width),
          ),
          TextSpan(
            text: 'lists and loops.',
            style: adjustableAccentStyle(width),
          ),
        ],
      ),
    );
  }
}
