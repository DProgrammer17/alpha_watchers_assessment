import 'package:app_watchers_assessment/core/constants/app_colors.dart';
import 'package:app_watchers_assessment/core/constants/app_constants.dart';
import 'package:app_watchers_assessment/widgets/utility_widgets/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle h0Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 30.asp : 16.asp,
  );

  static TextStyle h1Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 28.asp : 14.asp,
  );

  static TextStyle h2Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 14.asp,
  );

  static TextStyle h3Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h3TextMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h4Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 20.asp,
  );

  static TextStyle h4InfoTextMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
    fontSize: 20.asp,
  );

  static TextStyle h4HintTextMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w400,
    color: AppColors.textSubGrey,
    fontSize: 18.asp,
  );

  static TextStyle h4TextMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle h5Mono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle body1RegularMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 12.asp : 8.asp,
  );

  static TextStyle body2RegularMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 14.asp : 8.asp,
  );

  static TextStyle body3RegularMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );

  static TextStyle body3BoldMono(BuildContext context) => GoogleFonts.ibmPlexMono(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );

  static TextStyle h0Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 30.asp : 16.asp,
  );

  static TextStyle h1Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 28.asp : 14.asp,
  );

  static TextStyle h2Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 14.asp,
  );

  static TextStyle h3Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h3TextSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
    fontSize: 16.asp,
  );

  static TextStyle h4Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 20.asp,
  );

  static TextStyle h4InfoTextSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
    fontSize: 20.asp,
  );

  static TextStyle h4HintTextSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w400,
    color: AppColors.textSubGrey,
    fontSize: 18.asp,
  );

  static TextStyle h4TextSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle h5Sans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 18.asp,
  );

  static TextStyle body1RegularSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 12.asp : 8.asp,
  );

  static TextStyle body2RegularSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: context.isMobile ? 14.asp : 8.asp,
  );

  static TextStyle body3RegularSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );

  static TextStyle body3BoldSans(BuildContext context) => GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    fontSize: 10.asp,
  );
}