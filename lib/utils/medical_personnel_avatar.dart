/// Avatar รูปเจ้าหน้าที่ทางการแพทย์สำหรับหน้าล็อกอิน
/// เลือกตามเกณฑ์ 2 อย่าง: เพศ (gender) และตำแหน่งหน้าที่ (role)
///
/// ตัวอย่างการใช้งาน:
///   Image.asset(medicalPersonnelAvatar(
///     role: MedicalRole.nurse,
///     gender: MedicalGender.female,
///   ))
library;

/// ตำแหน่งหน้าที่ของเจ้าหน้าที่ทางการแพทย์
enum MedicalRole {
  /// แพทย์
  doctor,

  /// นักกายภาพ / ผู้เชี่ยวชาญ
  master,

  /// พยาบาล
  nurse,

  /// อสม. (อาสาสมัครสาธารณสุขประจำหมู่บ้าน)
  osm,
}

/// เพศของเจ้าหน้าที่
enum MedicalGender {
  male,
  female,
}

const String _basePath = 'assets/images/Medical Personnel';

/// คืน path ของรูป avatar ตามตำแหน่ง + เพศ
String medicalPersonnelAvatar({
  required MedicalRole role,
  required MedicalGender gender,
}) {
  final rolePart = switch (role) {
    MedicalRole.doctor => 'Doctor',
    MedicalRole.master => 'Master',
    MedicalRole.nurse => 'Nurs',
    MedicalRole.osm => 'อสม',
  };
  final genderPart = gender == MedicalGender.male ? 'boy' : 'girl';
  return '$_basePath/${rolePart}_$genderPart.webp';
}

/// แปลงค่า string (เช่นจาก API/ฐานข้อมูล) ให้เป็น MedicalRole
/// รองรับทั้งภาษาไทยและอังกฤษ คืน null ถ้าไม่รู้จัก
MedicalRole? medicalRoleFromString(String? value) {
  switch (value?.trim().toLowerCase()) {
    case 'doctor':
    case 'แพทย์':
    case 'หมอ':
      return MedicalRole.doctor;
    case 'master':
    case 'นักกายภาพ':
    case 'ผู้เชี่ยวชาญ':
      return MedicalRole.master;
    case 'nurse':
    case 'nurs':
    case 'พยาบาล':
      return MedicalRole.nurse;
    case 'osm':
    case 'อสม':
    case 'อสม.':
      return MedicalRole.osm;
    default:
      return null;
  }
}

/// แปลงค่า string ให้เป็น MedicalGender
/// รองรับทั้งภาษาไทยและอังกฤษ คืน null ถ้าไม่รู้จัก
MedicalGender? medicalGenderFromString(String? value) {
  switch (value?.trim().toLowerCase()) {
    case 'male':
    case 'boy':
    case 'm':
    case 'ชาย':
      return MedicalGender.male;
    case 'female':
    case 'girl':
    case 'f':
    case 'หญิง':
      return MedicalGender.female;
    default:
      return null;
  }
}
