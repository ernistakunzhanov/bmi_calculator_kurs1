import 'package:bmi_calculator/components/custom_main_btn.dart';
import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/decoration/app_decoration.dart';
import 'package:bmi_calculator/constants/strings/app_strings.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:bmi_calculator/data/local_data/bmi_calculator_data.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final double? bmiResult;
  const ResultView({
    required this.bmiResult,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Text(
          AppStrings().result.toUpperCase(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings().result,
              style: AppTextStyles.white35w300,
            ),
            const SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: AppDecoration.contDecor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    bmiCalculatorData
                        .bmiResultat(bmiResult!)
                        .toString()
                        .toUpperCase(),
                    style: AppTextStyles.green24w700,
                  ),
                  Text(
                    bmiResult!.toStringAsFixed(1),
                    style: AppTextStyles.white60bold,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      bmiCalculatorData.giveDescription(bmiResult!).toString(),
                      style: AppTextStyles.white18w400,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomMainBtn(
        btnText: AppStrings().reCalculate,
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
