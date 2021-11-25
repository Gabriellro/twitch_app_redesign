import 'package:flutter/material.dart';

class AppColors {
  static const twitchPurple = Color(0xFF9146FF);
  static const white = Color(0xFFFFFFFF);
  static const quaseBranco = Color(0xFFF2F3F5);
  static const black = Color(0xFF121212);
  static const ice = Color(0xFFF0F0FF);
  static const online = Color(0xFF43B581);
  static const ausente = Color(0xFFFAA61A);
  static const naoPertube = Color(0xFFF04747);
  static const ofline = Color(0xFF727D8A);
}

abstract class LightColors {
  static const background = AppColors.white;
  static const card = AppColors.quaseBranco;
  static const textLigth = AppColors.black;
  static const iconLight = AppColors.black;
}

abstract class DarkColors {
  static const background = AppColors.black;
  static const card = AppColors.ice;
  static const textDark = AppColors.white;
  static const iconDark = AppColors.white;
}
