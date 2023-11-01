import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle white40w500 = TextStyle(
    color: AppColors.white,
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle white35w300 = TextStyle(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  static TextStyle white26w400 = TextStyle(
    color: AppColors.white.withOpacity(0.5),
    fontSize: 26,
    fontWeight: FontWeight.w400,
  );
}
