import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../../constants/app_sizes.dart';
import '../../constants/text_styles.dart';

TextStyle adjustableDarkStyle(double width) {
  return width >= largeScreen ? kTextDark28 : kTextDark16;
}

TextStyle adjustableLightStyle(double width) {
  return width >= largeScreen ? kTextLight28 : kTextLight20;
}

TextStyle adjustableAccentStyle(double width) {
  return width >= largeScreen ? kTextAccent28 : kTextAccent16;
}

TextStyle adjustableCodeDarkStyle(double width) {
  return width >= largeScreen ? kTextCodeDark28 : kTextCodeDark16;
}

TextStyle adjustableDarkTitleStyle(double width) {
  return width >= largeScreen ? kTextTitleDark20 : kTextTitleDark16;
}

TextStyle adjustableDarkLargeTitleStyle(double width) {
  return width >= largeScreen ? kTextTitleDark28 : kTextTitleDark20;
}

TextStyle adjustableLightLargeTitleStyle(double width) {
  return width >= largeScreen ? kTextTitleLight28 : kTextTitleLight20;
}

TextStyle adjustableAccentLargeTitleStyle(double width) {
  return width >= largeScreen ? kTextTitleAccent28 : kTextTitleAccent20;
}

Future<void> openUrl(url, name) async {
  html.window.open(url, name);
}
