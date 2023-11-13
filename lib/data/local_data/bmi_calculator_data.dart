import 'dart:math' as math;

class BmiCalculatorData {
  double? claculateBmi({int? weight, double? height}) {
    final bmiJoop = weight! / math.pow(height! / 100, 2);
    return bmiJoop;
  }

  String? bmiResultat(double bmiJoop) {
    if (bmiJoop >= 40) {
      return 'Өтө семиз';
    } else if (bmiJoop > 25) {
      return 'Семиз';
    } else if (bmiJoop > 18.5) {
      return 'Нормалдуу';
    } else if (bmiJoop > 16) {
      return 'Арык';
    } else if (bmiJoop <= 16) {
      return 'Өтө арык';
    }
  }

  String? giveDescription(double bmiJoop) {
    if (bmiJoop >= 40) {
      return 'Сиздин дене салмагыңыз өтө семиз. Срочно арыктаңыз!';
    } else if (bmiJoop > 25) {
      return 'Сиздин дене салмагыңыз нормадан жогору. Көбүрөөк кыймылдаңыз!';
    } else if (bmiJoop > 18.5) {
      return 'Сиздин дене салмагыңыз норма. Азаматсыз!';
    } else if (bmiJoop > 16) {
      return 'Сиздин дене салмагыңыз нормадан төмөн. Жакшыраак тамактаныңыз!';
    } else if (bmiJoop <= 16) {
      return 'Сиздин дене салмагыңыз өтө арык. Срочно семириңиз!';
    }
  }
}

final BmiCalculatorData bmiCalculatorData = BmiCalculatorData();
