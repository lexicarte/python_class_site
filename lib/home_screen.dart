import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:python_class_site/constants/colors.dart';
import 'package:python_class_site/providers.dart';

import 'constants/app_sizes.dart';
import 'features/widgets/functions.dart';
import 'features/widgets/side_navigation.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final selectedPage = ref.watch(selectedPageProvider);

    return DefaultTextStyle(
      style: adjustableDarkStyle(width),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > largeScreen) {
            /// LARGE SCREEN
            return Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SideNavigation(),
                    Expanded(child: selectedPage),
                  ],
                ),
              ),
            );
          } else {
            /// SMALL SCREEN
            return Scaffold(
              appBar: AppBar(
                leading: Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: kMainLightColor,
                        size: 24,
                      ),
                    );
                  },
                ),
                backgroundColor: kMainAccentColor,
              ),
              drawer: const SideNavigation(),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(child: selectedPage),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
