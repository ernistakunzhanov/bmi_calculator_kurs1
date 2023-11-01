import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class WeightAndAgeWidget extends StatelessWidget {
  final String? title;
  final String? weightOrAge;
  final Function()? onMinus;
  final Function()? onPlus;
  const WeightAndAgeWidget({
    required this.title,
    required this.weightOrAge,
    this.onMinus,
    this.onPlus,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: AppDecoration.contDecor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$title".toUpperCase(),
            style: AppTextStyles.white26w400,
          ),
          Text(
            '$weightOrAge',
            style: AppTextStyles.white40w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onMinus,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                  backgroundColor: AppColors.btnColor, // background color
                  foregroundColor: Colors.white, // text color
                  elevation: 5, // button's elevation when it's pressed
                ),
                child: const Icon(
                  Icons.remove,
                  size: 30,
                ),
              ),
              ElevatedButton(
                onPressed: onPlus,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                  backgroundColor: AppColors.btnColor, // background color
                  foregroundColor: Colors.white, // text color
                  elevation: 5, // button's elevation when it's pressed
                ),
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
