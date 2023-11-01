import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color? color;
  final Function()? onTap;
  const GenderWidget({
    required this.icon,
    required this.title,
    required this.onTap,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: AppColors.white,
            ),
            const SizedBox(height: 15),
            Text(
              title!.toUpperCase(),
              style: AppTextStyles.white26w400,
            )
          ],
        ),
      ),
    );
  }
}
