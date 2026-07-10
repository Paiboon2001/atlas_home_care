import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/components/thai_date_picker_widget.dart';

/// Inline "card / agenda" view icon (Figma node 325:218) — a rounded rectangle
/// with a header divider line. Rendered via [SvgPicture.string] and recolored.
const String _cardViewSvg = '''
<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.666016 6.66675H15.3327M1.99935 2.66675H13.9993C14.7357 2.66675 15.3327 3.2637 15.3327 4.00008V12.0001C15.3327 12.7365 14.7357 13.3334 13.9993 13.3334H1.99935C1.26297 13.3334 0.666016 12.7365 0.666016 12.0001V4.00008C0.666016 3.2637 1.26297 2.66675 1.99935 2.66675Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>''';

/// Homepage top calendar strip (Figma node 324:723).
///
/// Top row: "AtlasHomeCare" wordmark + month selector on the left, and a
/// white view-toggle pill (agenda / map / calendar) on the right. Below it a
/// horizontal week strip of day capsules, each showing the weekday label,
/// colored task dots, and the day number (the selected day gets a blue circle).
class HomeCalendarStrip extends StatefulWidget {
  const HomeCalendarStrip({
    super.key,
    this.initialDate,
    this.selectedView = HomeCalendarView.agenda,
    this.onViewChanged,
    this.onMonthTap,
    this.onDaySelected,
  });

  final DateTime? initialDate;
  final HomeCalendarView selectedView;
  final ValueChanged<HomeCalendarView>? onViewChanged;
  final VoidCallback? onMonthTap;
  final ValueChanged<int>? onDaySelected;

  // Design tokens (from Figma variables).
  static const Color _primary = Color(0xFF339FF3);
  static const Color _secondary = Color(0xFF004078);
  static const Color _primaryText = Color(0xFF041228);
  static const Color _gray01 = Color(0xFF8A8F97);
  static const Color _line = Color(0xFFE3F1FF);
  static const Color _white = Color(0xFFFFFFFF);

  // "Progress" component segment colors (Figma node 324:396), left → right.
  // Each day shows N segments of this fixed sequence as one continuous bar.
  static const List<Color> _progressColors = [
    Color(0xFF0DCDFC),
    Color(0xFF004078),
    Color(0xFFE3F1FF),
    Color(0xFFFF8600),
    Color(0xFF10B981),
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
  State<HomeCalendarStrip> createState() => _HomeCalendarStripState();
}

class _HomeCalendarStripState extends State<HomeCalendarStrip> {
  late HomeCalendarView _selected = widget.selectedView;
  late DateTime _pickedDate = widget.initialDate ?? DateTime(2026, 7, 10);

  @override
  void didUpdateWidget(covariant HomeCalendarStrip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedView != widget.selectedView) {
      _selected = widget.selectedView;
    }
  }

  void _select(HomeCalendarView view) {
    if (_selected != view) setState(() => _selected = view);
    widget.onViewChanged?.call(view);
  }

  Future<void> _openMonthPicker() async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: ThaiDatePicker(
          initialDate: _pickedDate,
          firstDate: DateTime(1900),
          lastDate: DateTime(2050),
          onChanged: (d) => setState(() => _pickedDate = d),
        ),
      ),
    );
  }

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
                    onTap: widget.onMonthTap ?? _openMonthPicker,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_month_rounded,
                            size: 16.0, color: HomeCalendarStrip._secondary),
                        const SizedBox(width: 8.0),
                        Text(
                          formatThaiMonthYear(_pickedDate),
                          style: const TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: HomeCalendarStrip._primaryText,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Icon(Icons.unfold_more_rounded,
                            size: 16.0, color: HomeCalendarStrip._gray01),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _ViewToggle(
              selected: _selected,
              onChanged: _select,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        // ── Week strip ────────────────────────────────────────────────────
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: HomeCalendarStrip._days
              .map((d) => _DayCapsule(
                    data: d,
                    dotColors: HomeCalendarStrip._progressColors,
                    onTap: () => widget.onDaySelected?.call(d.day),
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
    // Horizontal gradient across the whole wordmark: blue → navy → purple.
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF33A0F3), // primary blue (Atlas)
          Color(0xFF004078), // secondary navy
          Color(0xFF041228), // primary text (Home)
          Color(0xFF8A3FD1), // violet
          Color(0xFFC24DE8), // purple (Care)
        ],
        stops: [0.0, 0.30, 0.50, 0.80, 1.0],
      ).createShader(bounds),
      child: const Text(
        'AtlasHomeCare',
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.3,
          height: 1.0,
          color: Colors.white, // painted by the gradient shader
        ),
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
        borderRadius: BorderRadius.circular(200.0),
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
            svg: _cardViewSvg,
            active: selected == HomeCalendarView.agenda,
            onTap: () => onChanged?.call(HomeCalendarView.agenda),
          ),
          _ToggleIcon(
            icon: Icons.map_outlined,
            active: selected == HomeCalendarView.map,
            onTap: () => onChanged?.call(HomeCalendarView.map),
          ),
          _ToggleIcon(
            icon: Icons.calendar_month_rounded,
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
      {this.icon, this.svg, required this.active, required this.onTap})
      : assert(icon != null || svg != null);

  final IconData? icon;
  final String? svg;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color =
        active ? HomeCalendarStrip._white : HomeCalendarStrip._primaryText;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(200.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 36.0,
        height: 24.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? HomeCalendarStrip._primary : Colors.transparent,
          borderRadius: BorderRadius.circular(200.0),
        ),
        child: svg != null
            ? SvgPicture.string(
                svg!,
                width: 16.0,
                height: 16.0,
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              )
            : Icon(icon, size: 16.0, color: color),
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
      borderRadius: BorderRadius.circular(200.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 40.0,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: HomeCalendarStrip._white,
          borderRadius: BorderRadius.circular(200.0),
          border: Border.all(color: HomeCalendarStrip._line, width: 1.0),
          boxShadow: const [
            // DS_Card (Figma): soft #5F9ED6 @ 8%, blur 8.
            BoxShadow(
              color: Color(0x145F9ED6),
              blurRadius: 8.0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.weekday,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: HomeCalendarStrip._gray01,
              ),
            ),
            const SizedBox(height: 6.0),
            SizedBox(
              height: 4.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  data.dotCount,
                  (i) => Container(
                    width: 5.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: dotColors[i % dotColors.length],
                      borderRadius: BorderRadius.horizontal(
                        left: i == 0
                            ? const Radius.circular(10.0)
                            : Radius.zero,
                        right: i == data.dotCount - 1
                            ? const Radius.circular(10.0)
                            : Radius.zero,
                      ),
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
                  fontSize: 18.0,
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
