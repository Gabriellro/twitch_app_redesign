import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

export 'app_colors.dart';
export 'app_text_styles.dart';

/// Reference to the application theme.
abstract class AppTheme {
  AppTheme._();

  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        primaryColor: AppColors.twitchPurple,
        scaffoldBackgroundColor: LightColors.background,
        backgroundColor: LightColors.background,
        iconTheme: const IconThemeData(color: LightColors.iconLight),
        brightness: Brightness.light,
        textTheme: customTextThemeLight(),
        cardColor: LightColors.card,
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData(
        primaryColor: AppColors.twitchPurple,
        scaffoldBackgroundColor: DarkColors.background,
        iconTheme: const IconThemeData(color: DarkColors.iconDark),
        brightness: Brightness.dark,
        textTheme: customTextThemeDark(),
        backgroundColor: DarkColors.background,
        cardColor: DarkColors.card,
      );
}
