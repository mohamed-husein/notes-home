import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/app_fonts.dart';
import '../../utils/app_sizes.dart';
import '../theme_color/theme_color_light.dart';

ThemeData get getThemeDataLight => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ThemeColorLight.primaryColor,
      brightness: Brightness.light,
      primaryIconTheme: const IconThemeData(
        color: ThemeColorLight.black,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ThemeColorLight.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: ThemeColorLight.white),
        iconTheme: const IconThemeData(color: ThemeColorLight.black),
      ),
      fontFamily: AppFonts.fontFamily,
      textTheme: getTextTheme(),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ThemeColorLight.primaryColor,
        
      ),
    );

getTextTheme() => TextTheme(
      /// Grey Light --> Dark
      displaySmall: TextStyle(
        color: ThemeColorLight.white,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      displayMedium: TextStyle(
        color: ThemeColorLight.white,
        fontSize: AppSizes.fs26,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      displayLarge: TextStyle(
        color: ThemeColorLight.grayscaleBold,
        fontSize: AppSizes.fs32,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      headlineLarge: TextStyle(
        color: ThemeColorLight.grayscale,
        fontSize: AppSizes.fs48,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      headlineMedium: TextStyle(
        color: ThemeColorLight.grayscale,
        fontSize: AppSizes.fs28,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      headlineSmall: TextStyle(
        color: ThemeColorLight.grayscale,
        fontSize: AppSizes.fs24,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      /// Body For Text in Buttons
      bodySmall: TextStyle(
        color: ThemeColorLight.white,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      bodyMedium: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs18,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      bodyLarge: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs24,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      /// Title
      titleSmall: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs11,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      /// black in light -- white in dark
      titleMedium: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs13,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      titleLarge: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs24,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      /// Label For (Text , Button) With Color Grey
      labelSmall: TextStyle(
        color: ThemeColorLight.white,
        fontSize: AppSizes.fs16,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),

      labelMedium: TextStyle(
        color: ThemeColorLight.labelColor,
        fontSize: AppSizes.fs18,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
      /// AppBar
      labelLarge: TextStyle(
        color: ThemeColorLight.black,
        fontSize: AppSizes.fs28,
        fontWeight: AppFonts.regular,
        fontFamily: AppFonts.fontFamily,
      ),
    );
