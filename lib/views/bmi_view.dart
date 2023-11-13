import 'package:bmi_calculator/components/custom_main_btn.dart';
import 'package:bmi_calculator/components/gender_widget.dart';
import 'package:bmi_calculator/components/height_widget.dart';
import 'package:bmi_calculator/components/weight_and_age_widget.dart';
import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/strings/app_strings.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:bmi_calculator/data/local_data/bmi_calculator_data.dart';
import 'package:bmi_calculator/views/result_view.dart';
import 'package:flutter/material.dart';

enum Gender { Erkek, Ayal, EchBiri }

enum Toyota { Corola, Rav4, Camry }

class BmiView extends StatefulWidget {
  const BmiView({Key? key}) : super(key: key);

  @override
  _BmiViewState createState() => _BmiViewState();
}

class _BmiViewState extends State<BmiView> {
  double _adamdynBoiu = 150;
  int _weight = 70;
  int _age = 25;

  Color activColor = AppColors.cyan;
  Color inactivColor = AppColors.contColor;

  bool male = false;
  bool female = false;
  Gender _gender = Gender.EchBiri;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Text(
          AppStrings().bmiCalculator.toUpperCase(),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GenderWidget(
                color: _gender == Gender.Erkek ? activColor : inactivColor,
                icon: Icons.male,
                title: AppStrings().male,
                onTap: () {
                  setState(() {});
                  _gender = Gender.Erkek;
                },
              ),
              GenderWidget(
                color: _gender == Gender.Ayal ? activColor : inactivColor,
                icon: Icons.female,
                title: AppStrings().female,
                onTap: () {
                  setState(() {});
                  _gender = Gender.Ayal;
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          HeightWidget(
            heightValue: _adamdynBoiu,
            sliderValue: _adamdynBoiu,
            onChanged: (double ozgorgon) {
              setState(() {
                _adamdynBoiu = ozgorgon;
              });
            },
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeightAndAgeWidget(
                title: AppStrings().weight,
                weightOrAge: '$_weight',
                onMinus: () {
                  setState(() {
                    _weight--;
                  });
                },
                onPlus: () {
                  setState(() {});
                  _weight++;
                },
              ),
              WeightAndAgeWidget(
                title: AppStrings().age,
                weightOrAge: '$_age',
                onMinus: () {
                  setState(() {
                    _age--;
                  });
                },
                onPlus: () {
                  setState(() {
                    _age++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomMainBtn(
        btnText: AppStrings().calculate,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultView(
                bmiResult: bmiCalculatorData.claculateBmi(
                  height: _adamdynBoiu,
                  weight: _weight,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}




/// male ? activColor : inactivColor,
/// if(male){
/// return activeColor
/// }else{
/// return inactiveColor
/// }
/// 
/// 
/// enum - turlor