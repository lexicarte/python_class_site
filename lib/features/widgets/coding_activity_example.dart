import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:python_class_site/constants/colors.dart';
import 'package:python_class_site/features/widgets/functions.dart';

import 'code_block.dart';

class CodingActivityExample extends ConsumerWidget {
  const CodingActivityExample({
    super.key,
    required this.isOpenProvider,
    required this.title,
    required this.inputTexts,
    required this.outputTexts,
  });

  final StateProvider<bool> isOpenProvider;
  final String title;
  final List<Text> inputTexts;
  final List<Text> outputTexts;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final isExpanded = ref.watch(isOpenProvider);

    return ExpansionPanelList(
      elevation: 0,
      animationDuration: const Duration(milliseconds: 300),
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool _isExpanded) {
        ref.read(isOpenProvider.notifier).state = !isExpanded;
      },
      expandIconColor: kMainAccentColor,
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Text(
              'Example Code',
              style: adjustableAccentLargeTitleStyle(width),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CodeBlock(
              title: title,
              inputTexts: inputTexts,
              outputTexts: outputTexts,
            ),
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
