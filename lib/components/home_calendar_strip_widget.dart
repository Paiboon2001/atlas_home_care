import 'package:flutter/material.dart';

/// Homepage top calendar strip (Figma node 324:723).
///
/// Top row: "AtlasHomeCare" wordmark + month selector on the left, and a
/// white view-toggle pill (agenda / map / calendar) on the right. Below it a
/// horizontal week strip of day capsules, each showing the weekday label,
/// colored task dots, and the day number (the selected day gets a blue circle).
class HomeCalendarStrip extends StatelessWidget {
  const HomeCalendarStrip({
    super.key,
    this.monthLabel = 'กรกฎาคม 2569',
    this.selectedView = HomeCalendarView.agenda,
    this.onViewChanged,
    this.onMonthTap,
    this.onDaySelected,
  });

  final String monthLabel;
  final HomeCalendarView selectedView;
  final ValueChanged<HomeCalendarView>? onViewChanged;
  final VoidCallback? onMonthTap;
  final ValueChanged<int>? onDaySelected;

  // Design tokens (from Figma variables).
  static const Color _primary = Color(0xFF339FF3);
  static const Color _primaryText = Color(0xFF041228);
  static const Color _gray01 = Color(0xFF8A8F97);
  static const Color _line = Color(0xFFE3F1FF);
  static const Color _white = Color(0xFFFFFFFF);

  // Task-category colors used for the day dots.
  static const List<Color> _dotColors = [
    Color(0xFFFFC745), // งานที่มอบหมาย
    Color(0xFF339FF3), // งานล่วงหน้า
    Color(0xFFFF5963), // งานที่เกินกำหนด
    Color(0xFF2ED235), // งานสำเร็จ
  ];

  static const List<_DayData> _days = [
    _DayData('อา', 5, 0),
    _DayData('จ', 6, 0),
    _DayData('อ', 7, 2),
    _DayData('พ', 8, 4),
    _DayData('พฤ', 9, 5),
    _DayData('ศ', 10, 3, selected: true),
    _DayData('ส', 11, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Top row: wordmark + month, view toggle ────────────────────────
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _Wordmark(),
                  const SizedBox(height: 8.0),
                  InkWell(
                    onTap: onMonthTap,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_today_rounded,
                            size: 16.0, color: _primary),
                        const SizedBox(width: 8.0),
                        Text(
                          monthLabel,
                          style: const TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: _primaryText,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Icon(Icons.unfold_more_rounded,
                            size: 16.0, color: _gray01),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _ViewToggle(
              selected: selectedView,
              onChanged: onViewChanged,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        // ── Week strip ────────────────────────────────────────────────────
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _days
              .map((d) => _DayCapsule(
                    data: d,
                    dotColors: _dotColors,
                    onTap: () => onDaySelected?.call(d.day),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

enum HomeCalendarView { agenda, map, calendar }

class _DayData {
  const _DayData(this.weekday, this.day, this.dotCount, {this.selected = false});
  final String weekday;
  final int day;
  final int dotCount;
  final bool selected;
}

class _Wordmark extends StatelessWidget {
  const _Wordmark();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.3,
      height: 1.0,
    );
    return RichText(
      text: const TextSpan(
        style: style,
        children: [
          TextSpan(
              text: 'Atlas',
              style: TextStyle(color: HomeCalendarStrip._primaryText)),
          TextSpan(
              text: 'Home',
              style: TextStyle(color: HomeCalendarStrip._primary)),
          TextSpan(
              text: 'Care',
              style: TextStyle(color: HomeCalendarStrip._primaryText)),
        ],
      ),
    );
  }
}

class _ViewToggle extends StatelessWidget {
  const _ViewToggle({required this.selected, this.onChanged});

  final HomeCalendarView selected;
  final ValueChanged<HomeCalendarView>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0,
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        color: HomeCalendarStrip._white,
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: const [
          BoxShadow(
              color: Color(0x1A004078), blurRadius: 1.0, offset: Offset(0, 0)),
          BoxShadow(
              color: Color(0x14004078), blurRadius: 4.0, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ToggleIcon(
            icon: Icons.view_agenda_rounded,
            active: selected == HomeCalendarView.agenda,
            onTap: () => onChanged?.call(HomeCalendarView.agenda),
          ),
          _ToggleIcon(
            icon: Icons.map_outlined,
            active: selected == HomeCalendarView.map,
            onTap: () => onChanged?.call(HomeCalendarView.map),
          ),
          _ToggleIcon(
            icon: Icons.calendar_today_outlined,
            active: selected == HomeCalendarView.calendar,
            onTap: () => onChanged?.call(HomeCalendarView.calendar),
          ),
        ],
      ),
    );
  }
}

class _ToggleIcon extends StatelessWidget {
  const _ToggleIcon(
      {required this.icon, required this.active, required this.onTap});

  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 32.0,
        height: 24.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? HomeCalendarStrip._primary : Colors.transparent,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Icon(
          icon,
          size: 16.0,
          color: active ? HomeCalendarStrip._white : HomeCalendarStrip._gray01,
        ),
      ),
    );
  }
}

class _DayCapsule extends StatelessWidget {
  const _DayCapsule(
      {required this.data, required this.dotColors, required this.onTap});

  final _DayData data;
  final List<Color> dotColors;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 40.0,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: HomeCalendarStrip._white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: HomeCalendarStrip._line, width: 1.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.weekday,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: HomeCalendarStrip._gray01,
              ),
            ),
            const SizedBox(height: 6.0),
            SizedBox(
              height: 4.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  data.dotCount,
                  (i) => Container(
                    width: 4.0,
                    height: 4.0,
                    margin: const EdgeInsets.symmetric(horizontal: 0.5),
                    decoration: BoxDecoration(
                      color: dotColors[i % dotColors.length],
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6.0),
            Container(
              width: 32.0,
              height: 32.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:
                    data.selected ? HomeCalendarStrip._primary : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${data.day}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: data.selected
                      ? HomeCalendarStrip._white
                      : HomeCalendarStrip._primaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
