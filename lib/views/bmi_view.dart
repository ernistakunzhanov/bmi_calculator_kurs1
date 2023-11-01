import 'package:bmi_calculator/components/gender_widget.dart';
import 'package:bmi_calculator/components/height_widget.dart';
import 'package:bmi_calculator/components/weight_and_age_widget.dart';
import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Text(
          'bmi Calculator'.toUpperCase(),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GenderWidget(
                color: male ? activColor : inactivColor,
                icon: Icons.male,
                title: 'Эркек',
                onTap: () {
                  setState(() {});
                  male = true;
                  female = false;
                },
              ),
              GenderWidget(
                color: female ? activColor : inactivColor,
                icon: Icons.female,
                title: 'Аял',
                onTap: () {
                  setState(() {});
                  female = true;
                  male = false;
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
                title: 'Weight',
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
                title: 'Age',
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
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: AppColors.cyan, // background color
          elevation: 5, // button's elevation when it's pressed
        ),
        child: Text(
          'Calculate'.toUpperCase(),
          style: AppTextStyles.white35w300,
        ),
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