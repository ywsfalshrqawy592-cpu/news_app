import 'package:flutter/material.dart';
import 'package:news_app/utils/app_colors.dart';
import 'package:news_app/utils/app_fonts.dart';

class AppTheme{
  static final ThemeData light = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
      ),
      splashColor: AppColors.black,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.white,
      textTheme: TextTheme(
          displayMedium: AppFonts.bold16Black(),
          displaySmall: AppFonts.mid14Black(),
          bodyLarge: AppFonts.mid24Black(),
          displayLarge: AppFonts.bold40White()
      )
  );
  static final ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.black,
    ),
    scaffoldBackgroundColor: AppColors.black,
      primaryColor: AppColors.black,
      splashColor: AppColors.white,
      textTheme: TextTheme(
      displayMedium: AppFonts.bold16White(),
      displaySmall: AppFonts.mid14White(),
      bodyLarge: AppFonts.mid24White(),
      displayLarge: AppFonts.bold40Black()
     )
    );
}