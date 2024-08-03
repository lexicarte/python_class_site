import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'features/topic/topic.dart';
import 'features/widgets/intro_title.dart';

class SelectedTopicNotifier extends StateNotifier<Topic?> {
  SelectedTopicNotifier() : super(null);

  void selectTopic(Topic? topic) {
    if (topic != null) {
      for (var t in topics) {
        t.selected = false;
      }
      topic.selected = true;
    }
    state = topic;
  }

  void selectIntro() {
    for (var t in topics) {
      t.selected = false;
    }
    state = null;
  }
}

final selectedTopicProvider =
StateNotifierProvider<SelectedTopicNotifier, Topic?>((ref) {
  return SelectedTopicNotifier();
});

final selectedPageProvider = Provider<Widget>((ref) {
  final topic = ref.watch(selectedTopicProvider);
  if (topic == null) {
    return const IntroTitle();
  } else {
    return getTopicWidget(topic.linkName);
  }
});

final recipeActivityIsExpandedProvider = StateProvider<bool>((ref) => false);
final userInputActivityIsExpandedProvider = StateProvider<bool>((ref) => false);
final bandNameActivityIsExpandedProvider = StateProvider<bool>((ref) => false);
final madLibActivityIsExpandedProvider = StateProvider<bool>((ref) => false);
