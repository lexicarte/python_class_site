import 'package:flutter/cupertino.dart';
import 'package:python_class_site/constants/app_sizes.dart';
import 'package:python_class_site/constants/colors.dart';
import 'package:python_class_site/features/widgets/functions.dart';

class BulletedList extends StatelessWidget {
  const BulletedList({super.key, required this.points});

  final List<String> points;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    List<Widget> getListItems() {
      List<Widget> listItems = [];
      for (String point in points) {
        listItems.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '▻ ',
                  style: adjustableDarkStyle(width),
                ),
                gapW12,
                Expanded(child: Text(point, style: adjustableDarkStyle(width))),
              ],
            ),
          ),
        );
      }
      return listItems;
    }

    return Column(children: getListItems());
  }
}
