import 'dart:ui';

import '/components/thai_date_picker_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/// Pill-shaped date field that shows a Thai-formatted date (e.g. "12 ก.ค. 2569")
/// and opens a [ThaiDatePicker] bottom sheet (วัน → เดือนไทย → ปี พ.ศ.) on tap.
///
/// The selected date is reported live via [onChanged]; the caller owns the
/// [date] value and passes it back in to update the label.
class ThaiDateField extends StatelessWidget {
  const ThaiDateField({
    super.key,
    required this.date,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
    this.placeholder = '24 ส.ค. 2569',
  });

  /// Currently selected date, or null to show [placeholder].
  final DateTime? date;
  final ValueChanged<DateTime> onChanged;

  /// Selectable range. Defaults to 1900-01-01 … today.
  final DateTime? firstDate;
  final DateTime? lastDate;

  /// Shown when [date] is null.
  final String placeholder;

  Future<void> _openPicker(BuildContext context) async {
    final DateTime last = lastDate ?? DateTime.now();
    final DateTime first = firstDate ?? DateTime(1900);
    final DateTime initial = date ?? last;
    await showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ThaiDatePicker(
              initialDate: initial,
              firstDate: first,
              lastDate: last,
              onChanged: onChanged,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => _openPicker(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                date != null ? formatThaiDate(date!) : placeholder,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
              const SizedBox(width: 8.0),
              Icon(
                Icons.calendar_month_sharp,
                color: FlutterFlowTheme.of(context).customColor5,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
