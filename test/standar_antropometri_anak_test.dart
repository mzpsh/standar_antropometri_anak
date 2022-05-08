import 'package:flutter_test/flutter_test.dart';

import 'package:standar_antropometri_anak/standar_antropometri_anak.dart';

void main() {
  group('getBodyWeightToHeigtIndex', () {
    // FEMALE
    test(
        'should return a correct under 24 months female index if body weight is equal median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          2.5, 45, 24,
          isFemale: true);
      expect(result, 0);
    });
    test(
        'should return a correct under 24 months female index if body weight is more than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          3.3, 45, 24,
          isFemale: true);
      expect(result, 3);
    });
    test(
        'should return a correct under 24 months female index if body weight is less than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          1.9, 45, 24,
          isFemale: true);
      expect(result, -3);
    });
    test(
        'should return a correct over 24 months female index if body weight is equal median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          7.2, 65, 25,
          isFemale: true);
      expect(result, 0);
    });
    test(
        'should return a correct over 24 months female index if body weight is more than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          9.7, 65, 25,
          isFemale: true);
      expect(result, 3);
    });
    test(
        'should return a correct over 24 months female index if body weight is less than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToHeigtIndex(
          5.6, 65, 25,
          isFemale: true);
      expect(result, -3);
    });
    // MALE
    test(
        'should return a correct under 24 months male index if body weight is equal median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(8.4, 70, 24);
      expect(result, 0);
    });
    test(
        'should return a correct under 24 months male index if body weight is more than median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(10.9, 70, 24);
      expect(result, 3);
    });
    test(
        'should return a correct under 24 months male index if body weight is less than median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(6.6, 70, 24);
      expect(result, -3);
    });
    test(
        'should return a correct over 24 months male index if body weight is equal median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(22.4, 120, 25);
      expect(result, 0);
    });
    test(
        'should return a correct over 24 months male index if body weight is more than median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(30.1, 120, 25);
      expect(result, 3);
    });
    test(
        'should return a correct over 24 months male index if body weight is less than median',
        () {
      final result =
          StandarAntropometriAnak.getBodyWeightToHeigtIndex(17.1, 120, 25);
      expect(result, -3);
    });
  });
  group('getBMI', () {
    test('should return a correct bmi value', () {
      final result = StandarAntropometriAnak.getBMI(65, 170);
      expect(result, 22.5);
    });
  });
  group('getBodyWeightToAgeIndex', () {
    test(
        'should return a correct male index if body weight is more than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(5.0, 0);
      expect(result, 3.0);
    });
    test(
        'should return a correct male index if body weight is less than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(2.1, 0);
      expect(result, -3.0);
    });
    test('should return a correct male index if body weight is equal to median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(3.3, 0);
      expect(result, 0);
    });
    test(
        'should return a correct female index if body weight is more than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(4.8, 0,
          isFemale: true);
      expect(result, 3.0);
    });
    test(
        'should return a correct female index if body weight is less than median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(2.0, 0,
          isFemale: true);
      expect(result, -3.0);
    });
    test(
        'should return a correct female index if body weight is equal to median',
        () {
      final result = StandarAntropometriAnak.getBodyWeightToAgeIndex(3.2, 0,
          isFemale: true);
      expect(result, 0);
    });
  });

  group('getBmiToAgeIndex', () {
    test('should return a correct male index if BMI is more than median', () {
      final result = StandarAntropometriAnak.getBmiToAgeIndex(20.2, 59);
      expect(result, 3.0);
    });
    test('should return a correct male index if BMI is less than median', () {
      final result = StandarAntropometriAnak.getBmiToAgeIndex(12.0, 59);
      expect(result, -3.0);
    });
    test('should return a correct male index if BMI is equal to median', () {
      final result = StandarAntropometriAnak.getBmiToAgeIndex(15.2, 59);
      expect(result, 0);
    });
    test('should return a correct female index if BMI is more than median', () {
      final result =
          StandarAntropometriAnak.getBmiToAgeIndex(20.4, 23, isFemale: true);
      expect(result, 3.0);
    });
    test('should return a correct female index if BMI is less than median', () {
      final result =
          StandarAntropometriAnak.getBmiToAgeIndex(12.2, 23, isFemale: true);
      expect(result, -3.0);
    });
    test('should return a correct female index if BMI is equal to median', () {
      final result =
          StandarAntropometriAnak.getBmiToAgeIndex(15.4, 23, isFemale: true);
      expect(result, 0);
    });
  });
}
