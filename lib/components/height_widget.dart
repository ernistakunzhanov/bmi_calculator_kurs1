import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/strings/app_strings.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  final double? heightValue;
  final double? sliderValue;
  final Function(double)? onChanged;
  const HeightWidget({
    required this.heightValue,
    required this.sliderValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: AppDecoration.contDecor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings().height.toUpperCase(),
            style: AppTextStyles.white26w400,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                heightValue!.toStringAsFixed(0),
                style: AppTextStyles.white40w500,
              ),
              Text(
                "cm",
                style: AppTextStyles.white26w400,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Slider(
            value: sliderValue!,
            max: 200,
            activeColor: AppColors.cyan,
            inactiveColor: AppColors.greyShade300,
            thumbColor: AppColors.pink,
            // label: _currentSliderValue.round().toString(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
