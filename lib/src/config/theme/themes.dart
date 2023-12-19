import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import 'colors.dart';

class UXTheme {
  static final String? fontFamily = GoogleFonts.lato().fontFamily;
  static const barOverLayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  );

  static ThemeData dark() => ThemeData(
        fontFamily: fontFamily,

        /// Colors
        primarySwatch: AppColors.primaryColors,
        primaryColor: AppColors.primary,
        brightness: Brightness.dark,
        useMaterial3: true,
        // Appbar
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: UIColors.white,
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeL,
          ),
          systemOverlayStyle: barOverLayStyle,
          elevation: 1,
          backgroundColor: AppColors.primary,
          actionsIconTheme: IconThemeData(
            color: UIColors.white,
          ),
          iconTheme: IconThemeData(
            color: UIColors.white,
          ),
        ),
        scaffoldBackgroundColor: AppColors.primary,

        /// input
        inputDecorationTheme: InputDecorationTheme(
          errorMaxLines: 3,
          filled: true,
          hintStyle: const TextStyle(color: UIColors.grey_60),
          labelStyle: const TextStyle(color: UIColors.grey_60),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppConstants.kPaddingL,
          ),
          fillColor: UIColors.grey_20,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
            borderSide: const BorderSide(
              color: UIColors.grey_60,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
            borderSide: const BorderSide(
              color: UIColors.grey_40,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.kRadiusXL),
            borderSide: const BorderSide(
              color: AppColors.danger,
            ),
          ),
        ),

        /// Button
        buttonTheme: const ButtonThemeData(
          height: 48,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.kRadiusXL),
              ),
            ),
          ),
        ),
        iconTheme: const IconThemeData(),
      );

  static ThemeData light() => ThemeData.light();
}
