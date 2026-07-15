/// Avatar รูปผู้ป่วยสำหรับการ์ดงานต่าง ๆ
/// เลือกตามเกณฑ์ 2 อย่าง: เพศ (gender) และอายุ (age) ของผู้ป่วย
///
/// ตัวอย่างการใช้งาน:
///   Image.asset(patientAvatarByAge(age: 72, gender: PatientGender.female))
///   Image.asset(patientAvatar(
///     ageGroup: PatientAgeGroup.elderly,
///     gender: PatientGender.male,
///   ))
library;

/// ช่วงอายุของผู้ป่วย
enum PatientAgeGroup {
  /// ทารก (0–2 ปี)
  baby,

  /// เด็ก (3–12 ปี)
  child,

  /// วัยรุ่น / วัยหนุ่มสาว (13–35 ปี)
  teen,

  /// ผู้ใหญ่ (36–59 ปี)
  adult,

  /// ผู้สูงอายุ (60 ปีขึ้นไป)
  elderly,
}

/// เพศของผู้ป่วย
enum PatientGender {
  male,
  female,
}

const String _basePath = 'assets/images/Patients';

/// คืน path ของรูป avatar ผู้ป่วยตามช่วงอายุ + เพศ
///
/// หมายเหตุ: ไฟล์เด็กหญิงชื่อ `Nurs_girl.webp` (ตั้งชื่อไฟล์ผิดจากต้นทาง
/// แต่รูปเป็นเด็กนักเรียนหญิง คู่กับ `yung_boy`)
String patientAvatar({
  required PatientAgeGroup ageGroup,
  required PatientGender gender,
}) {
  final isMale = gender == PatientGender.male;
  final fileName = switch (ageGroup) {
    PatientAgeGroup.baby => isMale ? 'baby_boy' : 'baby_girl',
    PatientAgeGroup.child => isMale ? 'yung_boy' : 'Nurs_girl',
    PatientAgeGroup.teen => isMale ? 'boy' : 'girl',
    PatientAgeGroup.adult => isMale ? 'papa' : 'mama',
    PatientAgeGroup.elderly => isMale ? 'granpa' : 'granma',
  };
  return '$_basePath/$fileName.webp';
}

/// คืน path ของรูป avatar ผู้ป่วยจากอายุ (ตัวเลขปี) + เพศ
String patientAvatarByAge({
  required int age,
  required PatientGender gender,
}) =>
    patientAvatar(ageGroup: patientAgeGroupFromAge(age), gender: gender);

/// แปลงอายุ (ปี) เป็นช่วงอายุ
PatientAgeGroup patientAgeGroupFromAge(int age) {
  if (age <= 2) return PatientAgeGroup.baby;
  if (age <= 12) return PatientAgeGroup.child;
  if (age <= 35) return PatientAgeGroup.teen;
  if (age <= 59) return PatientAgeGroup.adult;
  return PatientAgeGroup.elderly;
}

/// แปลงค่า string (จาก API/DB) ให้เป็น PatientGender
/// รองรับทั้งภาษาไทยและอังกฤษ คืน null ถ้าไม่รู้จัก
PatientGender? patientGenderFromString(String? value) {
  switch (value?.trim().toLowerCase()) {
    case 'male':
    case 'boy':
    case 'm':
    case 'ชาย':
      return PatientGender.male;
    case 'female':
    case 'girl':
    case 'f':
    case 'หญิง':
      return PatientGender.female;
    default:
      return null;
  }
}
