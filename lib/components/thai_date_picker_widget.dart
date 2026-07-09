import 'package:flutter/cupertino.dart';

const List<String> _thaiMonths = [
  'มกราคม',
  'กุมภาพันธ์',
  'มีนาคม',
  'เมษายน',
  'พฤษภาคม',
  'มิถุนายน',
  'กรกฎาคม',
  'สิงหาคม',
  'กันยายน',
  'ตุลาคม',
  'พฤศจิกายน',
  'ธันวาคม',
];

const List<String> _thaiMonthsAbbr = [
  'ม.ค.',
  'ก.พ.',
  'มี.ค.',
  'เม.ย.',
  'พ.ค.',
  'มิ.ย.',
  'ก.ค.',
  'ส.ค.',
  'ก.ย.',
  'ต.ค.',
  'พ.ย.',
  'ธ.ค.',
];

/// Formats [date] the Thai way — e.g. "12 ก.ค. 2569": day, abbreviated Thai
/// month, and Buddhist-era year (Gregorian year + 543).
String formatThaiDate(DateTime date) =>
    '${date.day} ${_thaiMonthsAbbr[date.month - 1]} ${date.year + 543}';

/// Thai-style date picker: three wheels ordered วัน → เดือน(ไทย) → ปี(พ.ศ.).
///
/// Works on Gregorian [DateTime] internally (day/month/year) and only converts
/// the year to Buddhist Era (+543) for display. Reports the selected date via
/// [onChanged]; the day wheel auto-clamps to the number of days in the chosen
/// month/year.
class ThaiDatePicker extends StatefulWidget {
  const ThaiDatePicker({
    super.key,
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onChanged,
    this.yearOnly = false,
  });

  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final ValueChanged<DateTime> onChanged;

  /// When true, shows a single ปี(พ.ศ.) wheel instead of วัน/เดือน/ปี. The
  /// day/month of [initialDate] are kept and reported unchanged.
  final bool yearOnly;

  @override
  State<ThaiDatePicker> createState() => _ThaiDatePickerState();
}

class _ThaiDatePickerState extends State<ThaiDatePicker> {
  late int _day;
  late int _month; // 1-12
  late int _year; // Gregorian

  late final FixedExtentScrollController _dayCtrl;
  late final FixedExtentScrollController _monthCtrl;
  late final FixedExtentScrollController _yearCtrl;

  @override
  void initState() {
    super.initState();
    _day = widget.initialDate.day;
    _month = widget.initialDate.month;
    _year = widget.initialDate.year;
    _dayCtrl = FixedExtentScrollController(initialItem: _day - 1);
    _monthCtrl = FixedExtentScrollController(initialItem: _month - 1);
    _yearCtrl = FixedExtentScrollController(
        initialItem: _year - widget.firstDate.year);
  }

  @override
  void dispose() {
    _dayCtrl.dispose();
    _monthCtrl.dispose();
    _yearCtrl.dispose();
    super.dispose();
  }

  // Days in the currently selected month/year (handles Feb / leap years).
  int get _daysInMonth => DateTime(_year, _month + 1, 0).day;

  void _emit() {
    // Clamp the day if the new month has fewer days.
    final maxDay = _daysInMonth;
    if (_day > maxDay) {
      _day = maxDay;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _dayCtrl.jumpToItem(_day - 1);
      });
    }
    widget.onChanged(DateTime(_year, _month, _day));
  }

  @override
  Widget build(BuildContext context) {
    final firstYear = widget.firstDate.year;
    final lastYear = widget.lastDate.year;
    final years = [for (int y = firstYear; y <= lastYear; y++) y];
    final daysInMonth = _daysInMonth;

    final textStyle = TextStyle(
      fontSize: 18.0,
      color: CupertinoColors.label.resolveFrom(context),
    );

    Widget wheel({
      required FixedExtentScrollController controller,
      required int childCount,
      required ValueChanged<int> onChanged,
      required IndexedWidgetBuilder itemBuilder,
    }) {
      return CupertinoPicker.builder(
        scrollController: controller,
        itemExtent: 40.0,
        squeeze: 1.1,
        onSelectedItemChanged: onChanged,
        childCount: childCount,
        itemBuilder: itemBuilder,
      );
    }

    if (widget.yearOnly) {
      return DefaultTextStyle(
        style: textStyle,
        child: wheel(
          controller: _yearCtrl,
          childCount: years.length,
          onChanged: (i) {
            setState(() => _year = years[i]);
            _emit();
          },
          itemBuilder: (context, i) =>
              Center(child: Text('${years[i] + 543}', style: textStyle)),
        ),
      );
    }

    return DefaultTextStyle(
      style: textStyle,
      child: Row(
        children: [
          // วัน
          Expanded(
            flex: 3,
            child: wheel(
              controller: _dayCtrl,
              childCount: daysInMonth,
              onChanged: (i) {
                _day = i + 1;
                _emit();
              },
              itemBuilder: (context, i) =>
                  Center(child: Text('${i + 1}', style: textStyle)),
            ),
          ),
          // เดือน (ไทย)
          Expanded(
            flex: 5,
            child: wheel(
              controller: _monthCtrl,
              childCount: 12,
              onChanged: (i) {
                setState(() => _month = i + 1);
                _emit();
              },
              itemBuilder: (context, i) =>
                  Center(child: Text(_thaiMonths[i], style: textStyle)),
            ),
          ),
          // ปี (พ.ศ.)
          Expanded(
            flex: 4,
            child: wheel(
              controller: _yearCtrl,
              childCount: years.length,
              onChanged: (i) {
                setState(() => _year = years[i]);
                _emit();
              },
              itemBuilder: (context, i) =>
                  Center(child: Text('${years[i] + 543}', style: textStyle)),
            ),
          ),
        ],
      ),
    );
  }
}
