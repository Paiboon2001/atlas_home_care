import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Outlined pill chips showing the visit date and time, e.g.
/// "📅 14 ธันวาคม 2568   ⏰ 11:45 น."
class VisitTimeChips extends StatelessWidget {
  const VisitTimeChips({
    super.key,
    required this.date,
    required this.time,
  });

  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    // Wrap, not Row: if the two chips ever exceed the space beside the avatar
    // they drop to a second line instead of overflowing.
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        _Chip(
          icon: Icons.calendar_month_outlined,
          iconColor: const Color(0xFF339FF3),
          label: date,
        ),
        _Chip(
          icon: Icons.alarm,
          iconColor: const Color(0xFFFF8600),
          label: time,
        ),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.icon,
    required this.iconColor,
    required this.label,
  });

  final IconData icon;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: const Color(0xFFD0D8E0), width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: iconColor, size: 16.0),
          const SizedBox(width: 4.0),
          Text(
            label,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 14.0,
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ],
      ),
    );
  }
}
