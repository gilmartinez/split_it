import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get borders;
  Color get appBarBackground;
  Color get appBarTitle;
  Color get border2;
  Color get addIcon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardTitle;
  Color get infoCardSubtitle1;
  Color get infoCardSubtitle2;
  
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);
  @override
  Color get backgroundSecondary => Color(0xFF40B38C);
  @override
  Color get title => Color(0xFF40B28C);
  @override
  Color get button => Color(0xFF666666);
  @override
  Color get borders => Color(0xFF666666);
  @override
  Color get appBarBackground => Color(0xFF40B28C);
  @override
  Color get appBarTitle => Color(0xFFFFFFFF);
  @override
  Color get border2 => Color(0xFFFFFFFF);
  @override
  Color get addIcon => Color(0xFFF5F5F5);
  @override
  Color get iconBackground1 => Color(0xFFE9F8F2);
  @override
  Color get iconBackground2 => Color(0xFFFDECEF);
  @override
  Color get infoCardTitle => Color(0xFF666666);
   @override
  Color get infoCardSubtitle1 => Color(0xFF40B28C);
   @override
  Color get infoCardSubtitle2 => Color(0xFFE83F5B);
}
