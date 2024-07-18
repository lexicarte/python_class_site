import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_sizes.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../providers.dart';
import '../topic/topic.dart';

class SideNavigation extends ConsumerWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > largeScreen) {
        return Container(
          color: kMainAccentColor,
          width: 300,
          child: Column(
            children: [
              gapH32,
              ListView(shrinkWrap: true, children: sidebarTopics(ref, context)),
              gapH32,
            ],
          ),
        );
      } else {
        return Container(
          color: kMainAccentColor,
          width: 300,
          child: Column(
            children: [
              gapH32,
              Expanded(
                child: ListView(
                  shrinkWrap: false,
                  children: sidebarTopics(ref, context),
                ),
              ),
              gapH32,
            ],
          ),
        );
      }
    });
  }
}

List<ListTile> sidebarTopics(WidgetRef ref, BuildContext context) {
  List<ListTile> sidebarTopics = [
    ListTile(
      leading: const Icon(Icons.home, color: kMainLightColor, size: 20),
      title: Text(
        'Home',
        style: kTextLight20,
        textAlign: TextAlign.left,
      ),
      onTap: () {
        ref.read(selectedTopicProvider.notifier).selectIntro();
        if (MediaQuery.of(context).size.width <= largeScreen) {
          Navigator.pop(context); // Close the drawer
        }
      },
    ),
    ...topics.map((topic) {
      return ListTile(
        title: Text(
          topic.name,
          style: topic.selected ? kTextLight20.copyWith(fontWeight: FontWeight.bold) : kTextLight20,
          textAlign: TextAlign.left,
        ),
        onTap: () {
          for (var topic in topics) {
            topic.selected = false;
          }
          topic.selected = true;
          ref.read(selectedTopicProvider.notifier).selectTopic(topic);
          if (MediaQuery.of(context).size.width <= largeScreen) {
            Navigator.pop(context); // Close the drawer
          }
        },
      );
    }),
  ];
  return sidebarTopics;
}
