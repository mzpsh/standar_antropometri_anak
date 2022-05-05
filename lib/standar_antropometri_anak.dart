library standar_antropometri_anak;

import 'dart:math';

import 'package:standar_antropometri_anak/bodyheight_age_table.dart';
import 'package:standar_antropometri_anak/bodyweight_age_table.dart';

class StandarAntropometriAnak {
  static double getBMI(num weight, num heightInCm) {
    final height = heightInCm / 100;
    return double.parse(
      (weight / pow(height, 2)).toStringAsFixed(1),
    );
  }

  static double getBodyWeightToAgeIndex(
    num bodyWeight,
    int ageInMonth, {
    bool isFemale = false,
  }) {
    late double index;
    late List ageRow;

    if (!isFemale) {
      ageRow = maleBodyWeightAgeTable[ageInMonth] as List;
    } else {
      ageRow = femaleBodyWeightAgeTable[ageInMonth] as List;
    }

    final median = ageRow[3];

    if (bodyWeight == median) {
      index = 0;
    } else if (bodyWeight > median) {
      final highLimit = ageRow[6];
      final oneSD = (highLimit - median) / 3;

      final difference = bodyWeight - median;

      index = difference / oneSD;
    } else {
      final lowLimit = ageRow[0];
      final oneSD = (lowLimit - median) / 3;

      final difference = median - bodyWeight;

      index = difference / oneSD;
    }

    return double.parse(index.toStringAsFixed(1));
  }

  static double getBodyHeightToAgeIndex(
    num bodyHeight,
    int ageInMonth, {
    bool isFemale = false,
  }) {
    late double index;
    late List ageRow;

    if (!isFemale) {
      ageRow = maleBodyHeightAgeTable[ageInMonth] as List;
    } else {
      ageRow = femaleBodyHeightAgeTable[ageInMonth] as List;
    }

    final median = ageRow[3];

    if (bodyHeight == median) {
      index = 0;
    } else if (bodyHeight > median) {
      final highLimit = ageRow[6];
      final oneSD = (highLimit - median) / 3;

      final difference = bodyHeight - median;

      index = difference / oneSD;
    } else {
      final lowLimit = ageRow[0];
      final oneSD = (lowLimit - median) / 3;

      final difference = median - bodyHeight;

      index = difference / oneSD;
    }

    return double.parse(index.toStringAsFixed(1));
  }
}

// void main() {
//   final result = StandarAntropometriAnak.getBodyHeightToAgeIndex(119.9, 54);
//   print(result);
// }
