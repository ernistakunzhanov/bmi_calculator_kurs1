import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomMainBtn extends StatelessWidget {
  final String btnText;
  final Function()? onTap;
  const CustomMainBtn({
    required this.btnText,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 8),
        backgroundColor: AppColors.cyan, // background color
        elevation: 5, // button's elevation when it's pressed
      ),
      child: Text(
        btnText.toUpperCase(),
        style: AppTextStyles.white35w300,
      ),
    );
  }
}
