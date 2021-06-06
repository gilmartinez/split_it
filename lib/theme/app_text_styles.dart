import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get homeTitle;
  TextStyle get appBarTitle;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubtitle1;
  TextStyle get infoCardSubtitle2;
}

class AppTextStyleDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  TextStyle get homeTitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.backgroundPrimary,
      );

  @override
  TextStyle get appBarTitle => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.appBarTitle,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppTheme.colors.infoCardTitle);

  @override
  TextStyle get infoCardSubtitle1 => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardSubtitle1,
      );

  @override
  TextStyle get infoCardSubtitle2 => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardSubtitle2,
      );
}
