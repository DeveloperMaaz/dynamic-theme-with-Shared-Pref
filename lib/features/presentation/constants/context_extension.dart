import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  TextTheme get secondaryTextTheme => theme.textTheme;
 
}
