import 'package:flutter/material.dart';

/// Card shadow used across the app — taken from the village ("หมู่บ้านที่ดูแล")
/// list cards: a soft blue-grey glow with no offset.
const List<BoxShadow> kCardShadow = [
  BoxShadow(color: Color(0x145F9ED6), blurRadius: 8.0, offset: Offset(0, 0)),
];

/// Figma "tabbr" effect: three stacked #004078 drop shadows, used by the
/// calendar strip capsule.
const List<BoxShadow> kCapsuleShadow = [
  BoxShadow(color: Color(0x1A004078), blurRadius: 1.0, offset: Offset(0, 0)),
  BoxShadow(color: Color(0x14004078), blurRadius: 2.0, offset: Offset(0, 0)),
  BoxShadow(color: Color(0x14004078), blurRadius: 4.0, offset: Offset(0, 2)),
];
