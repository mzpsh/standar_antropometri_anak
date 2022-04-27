import 'package:flutter_test/flutter_test.dart';

import 'package:standar_antropometri_anak/standar_antropometri_anak.dart';

void main() {
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
}
