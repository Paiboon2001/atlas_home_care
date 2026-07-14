import 'package:flutter/material.dart';

/// The app's switch, drawn the same way on every platform.
///
/// `Switch.adaptive` renders a Material switch on Android and a Cupertino one
/// on iOS, so the two platforms looked different. This is the Figma spec:
/// a 40×22 track (primary when on, gray_03 when off) with an 18px white thumb.
class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  static const Color _onTrack = Color(0xFF339FF3); // primary_color
  static const Color _offTrack = Color(0xFFD0D8E0); // gray_03

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      toggled: value,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onChanged == null ? null : () => onChanged!(!value),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          width: 40.0,
          height: 22.0,
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: value ? _onTrack : _offTrack,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOut,
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 18.0,
              height: 18.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A272727),
                    blurRadius: 4.0,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
