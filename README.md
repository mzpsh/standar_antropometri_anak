# Standar Antropometri Anak
A dart package for measuring index and normal range of body weight to age, body height to age, body weight to height, and body mass index to age. Using Ministry of Health's PMK No.2 2020 as the reference.

## Features:
- [x] Body weight to age
- [x] Body height to age
- [x] Body weight to height
- [x] BMI/IMT 
- [x] BMI to age

## Installation
Add this to your pubspec.yaml
```
dependencies:
  standar_antropometri_anak:
    git: https://github.com/mzpsh/standar_antropometri_anak.git
```
## Usage Example
```
final bmiToAgeIndex = 
  StandarAntropometriAnak.getBmiToAgeIndex(24, 60, true);
print(bmiToAgeIndex);
```
### Note on body weight to height
Make sure `bodyHeight` value is between 45 and 110 if `ageMonth` is less than 24, and 65 to 120 if more than 24. 

References:
[PERATURAN MENTERI KESEHATAN REPUBLIK INDONESIA NOMOR 2 TAHUN 2020 TENTANG STANDAR ANTROPOMETRI ANAK](http://hukor.kemkes.go.id/uploads/produk_hukum/PMK_No__2_Th_2020_ttg_Standar_Antropometri_Anak.pdf)
