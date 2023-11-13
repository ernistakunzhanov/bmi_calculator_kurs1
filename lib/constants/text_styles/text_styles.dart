import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle white40w500 = TextStyle(
    color: AppColors.white,
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle white60bold = TextStyle(
    color: AppColors.white,
    fontSize: 60,
    fontWeight: FontWeight.bold,
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
  static const TextStyle white18w400 = TextStyle(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle green24w700 = TextStyle(
    color: AppColors.green,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
}
