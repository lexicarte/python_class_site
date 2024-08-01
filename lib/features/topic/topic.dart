import 'package:flutter/material.dart';
import 'package:python_class_site/features/topic_screens/1_what_can_python_do.dart';
import 'package:python_class_site/features/topic_screens/7-5_int_float_bool.dart';

import '../topic_screens/10_loops.dart';
import '../topic_screens/11_objects.dart';
import '../topic_screens/12_errors.dart';
import '../topic_screens/13_working_with_data.dart';
import '../topic_screens/2_goals.dart';
import '../topic_screens/3_resources.dart';
import '../topic_screens/4_print.dart';
import '../topic_screens/5_strings.dart';
import '../topic_screens/6_variables.dart';
import '../topic_screens/7_data_types.dart';
import '../topic_screens/8_if_then.dart';
import '../topic_screens/9_functions.dart';

class Topic {
  Topic({
    required this.name,
    required this.linkName,
    this.selected = false,
  });

  final String name;
  final String linkName;
  bool selected;
}

List<Topic> topics = [
  Topic(name: 'What can Python do?', linkName: 'python-intro'),
  Topic(name: 'Goals for this class', linkName: 'goals'),
  Topic(name: 'Resources', linkName: 'resources'),
  Topic(name: 'Print and Comment', linkName: 'print'),
  Topic(name: 'Basic Strings', linkName: 'strings'),
  Topic(name: 'Variables & User Input', linkName: 'variables'),
  Topic(name: 'Data Types & Strings', linkName: 'data-types'),
  Topic(name: 'Int, Float, & Bool', linkName: 'int-float-bool'),
  Topic(name: 'If-Then', linkName: 'if-then'),
  Topic(name: 'Functions', linkName: 'functions'),
  Topic(name: 'Loops', linkName: 'loops'),
  Topic(name: 'Object Oriented Programming', linkName: 'OOP'),
  Topic(name: 'Errors', linkName: 'errors'),
  Topic(name: 'Working with Data', linkName: 'working-with-data'),
];

Map<String, Widget> topicWidgets = {
  'python-intro': const WhatCanPythonDo(),
  'goals': const Goals(),
  'resources': const Resources(),
  'print': const Print(),
  'strings': const Strings(),
  'variables': const Variables(),
  'data-types': const DataTypes(),
  'int-float-bool': const IntFloatBool(),
  'if-then': const IfThen(),
  'functions': const Functions(),
  'loops': const Loops(),
  'OOP': const Objects(),
  'errors': const Errors(),
  'working-with-data': const WorkingWithData(),
};

Widget getTopicWidget(String linkName) {
  return topicWidgets[linkName] ?? const Center(child: Text('Topic not found'));
}
