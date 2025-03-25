import 'package:file_structure/core/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';




ThemeData darkThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      iconTheme: IconThemeData(color: Color(0xffD9D9D9), size: 24),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: AppColors.textGrey,
            fontSize: 2.5.w,
            fontFamily: "Outfit",
            fontWeight: FontWeight.w400),
        // fillColor: AppColors.mainColor,
        fillColor: AppColors.dividerColor,
        focusColor: Colors.black,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldBorderColor)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldBorderColor)),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            // backgroundColor: Colors.purple,
            backgroundColor: AppColors.lightPrimary,
            foregroundColor: Colors.white),
      ),
      expansionTileTheme: ExpansionTileThemeData(
          shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(8),
      )),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStateColor.resolveWith((states) => Colors.white)),
      ),
      textTheme: TextTheme(
        titleSmall: GoogleFonts.outfit(fontSize: 3.w, color: Colors.white),
        bodyMedium: GoogleFonts.outfit(color: Colors.white, fontSize: 4.5.w),
        labelLarge: GoogleFonts.outfit(
            color: Colors.white, fontSize: 3.w, fontWeight: FontWeight.w600),
        labelMedium: GoogleFonts.outfit(
            color: AppColors.textGray,
            fontSize: 3.w,
            fontWeight: FontWeight.w400),
        labelSmall: GoogleFonts.outfit(
            color: AppColors.textGrey,
            fontSize: 2.2.w,
            fontWeight: FontWeight.w400),
        titleLarge: GoogleFonts.outfit(
            color: Colors.white, fontSize: 4.7.w, fontWeight: FontWeight.w600),
        titleMedium: GoogleFonts.outfit(
            color: Colors.white, fontSize: 4.5.w, fontWeight: FontWeight.w600),
        // titleSmall: TextStyle(
        //     color: Colors.white,
        //     fontSize: 16,
        //     fontFamily: "Outfit",
        //     fontWeight: FontWeight.w400),
        bodyLarge: GoogleFonts.outfit(
            color: Colors.white, fontSize: 3.5.w, fontWeight: FontWeight.w600),
        bodySmall: GoogleFonts.outfit(
            color: Color(0xffB3B3B3),
            fontSize: 2.5.w,
            fontWeight: FontWeight.w400),
        headlineLarge: GoogleFonts.outfit(
            color: Colors.white, fontSize: 3.w, fontWeight: FontWeight.w400),
        // bodyLarge: TextStyle(fontSize: 25),
        // bodyMedium: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
      ),
    );
  }
