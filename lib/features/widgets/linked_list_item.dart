import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:python_class_site/constants/colors.dart';

import '../../constants/app_sizes.dart';
import '../../constants/text_styles.dart';
import 'functions.dart';

class LinkedListItem extends StatelessWidget {
  const LinkedListItem({
    super.key,
    required this.title,
    required this.description,
    required this.link,
  });

  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => openUrl(link, title),
          child: SizedBox(
            width: width * .20,
            child: Text(title,
                style: width > largeScreen
                    ? kTextAccent28.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: kMainAccentColor,
                      )
                    : kTextAccent20.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: kMainAccentColor)),
          ),
        ),
        gapW20,
        Expanded(
          child: Text(
            description,
            style: adjustableDarkStyle(width),
          ),
        ),
      ],
    );
  }
}
