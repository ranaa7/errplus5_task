import 'package:flutter/material.dart';


import '../../utils/strings/fonts.dart';
import 'app_colors.dart';


class Themes {
  static ThemeData get defaultTheme => ThemeData(
      fontFamily: Fonts.cairo,
     primaryColor: AppColors.white,
      appBarTheme: const AppBarTheme(
        color: AppColors.white,
        titleTextStyle: TextStyle(color: AppColors.white),
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
      ),
      scaffoldBackgroundColor: AppColors.grey7,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: AppColors.white)
          .copyWith(background: AppColors.white));
}
