import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkingclic/shared/constant/color.dart';

class AppTextStyles {
  AppTextStyles._();

  /// Appbar
  static TextStyle appbarTitle = GoogleFonts.rubik(
    color: AppColors.darkGray,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static TextStyle appbarTitleMedium = GoogleFonts.rubik(
    color: AppColors.darkGray,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  ///body
  static TextStyle body = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyBold = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyGray = GoogleFonts.poppins(
    color: AppColors.gray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  /// generics

  // bigger

  static TextStyle biggerTitle = GoogleFonts.rubik(
    color: AppColors.white,
    fontSize: 60,
    fontWeight: FontWeight.w700,
  );

  static TextStyle biggerTitleFrench = GoogleFonts.rubik(
    color: AppColors.white,
    fontSize: 54,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bigTitle = GoogleFonts.rubik(
    color: AppColors.darkGray,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle title = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bigNumbers = GoogleFonts.rubik(
    color: AppColors.darkGray,
    fontSize: 23,
    fontWeight: FontWeight.w700,
  );

  static TextStyle modalTitle = GoogleFonts.rubik(
    color: AppColors.darkGray,
    fontSize: 23,
    fontWeight: FontWeight.w700,
  );

  static TextStyle modalContent = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle modalContentGray = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  // modal subtitle
  static TextStyle modalSubtitle = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );

  //modal underline
  static TextStyle modalUnderline = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );
  static TextStyle modalUnderlineWhite = GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline,
      decorationColor: AppColors.white);

  // modal option
  static TextStyle modalOption = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bigButtonText = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  //white
  static TextStyle whiteBigButtonText = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  //gray

  static TextStyle grayBigButtonText = GoogleFonts.poppins(
    color: AppColors.gray,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static TextStyle buttonText = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  //white
  static TextStyle whiteButtonText = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle secondaryButtonText = GoogleFonts.poppins(
    color: AppColors.gray,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle smallButtonText = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );

  static TextStyle smallButtonTextWhite = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );

  static TextStyle smallButtonTextGray = GoogleFonts.poppins(
    color: AppColors.gray,
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );

  /// Inputs
  static TextStyle inputLabel = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );
  static TextStyle inputFloatingLabel = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle inputHint = GoogleFonts.poppins(
    color: AppColors.gray,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle inputError = GoogleFonts.poppins(
    color: AppColors.red,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  //profile pic
  static TextStyle profileInitialCharacter = GoogleFonts.rubik(
    color: AppColors.white,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  /// profile
  static TextStyle profileText = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );
  static TextStyle profileTextLight = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
  );
  static TextStyle profileTextBold02 = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 13.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle profileTextSmall = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
  );
  static TextStyle profileTextSmallBold = GoogleFonts.poppins(
    color: AppColors.darkGray,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );
}

class CustomTextStyles {
  static TextStyle customTextStylePoppins(
      {double fontSize = 12,
      Color color = AppColors.black,
      FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle customTextStyleRubik(
      {double fontSize = 12,
      Color color = AppColors.black,
      FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.rubik(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
