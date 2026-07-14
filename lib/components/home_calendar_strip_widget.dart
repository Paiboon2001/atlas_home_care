import 'dart:math' as math;

import '/components/card_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  static const Color _primaryText = Color(0xFF041228);
  static const Color _gray01 = Color(0xFF8A8F97);
  static const Color _white = Color(0xFFFFFFFF);

  // Per-day job-status indicator colours (Google-Calendar style). Each dot on a
  // day capsule is one job, coloured by its status.
  static const Map<JobStatus, Color> statusColors = {
    JobStatus.newOrder: Color(0xFFFF8600), // orange — new order to accept
    JobStatus.today: Color(0xFFFFBD00), // yellow — due today
    JobStatus.overdue: Color(0xFFF44336), // red — overdue, not done
    JobStatus.upcoming: Color(0xFF0DCDFC), // blue — upcoming (tomorrow onward)
    JobStatus.done: Color(0xFF10B981), // green — completed
  };

  /// Builds the current Sunday→Saturday week from [now], tagging each day with
  /// mock job statuses relative to today. To wire real data, replace
  /// [_mockStatuses] with a lookup into the actual calendar/job source.
  /// Sunday→Saturday week containing [anchor]. The filled day is [selected]
  /// (null = none); job-status colours are computed relative to [today].
  static List<_DayData> buildWeek(
      DateTime anchor, DateTime? selected, DateTime today,
      {int weeks = 1}) {
    final DateTime a = DateTime(anchor.year, anchor.month, anchor.day);
    final DateTime t = DateTime(today.year, today.month, today.day);
    final DateTime? sel = selected == null
        ? null
        : DateTime(selected.year, selected.month, selected.day);
    final int fromSunday = a.weekday % 7; // Dart: Mon=1..Sun=7 → Sun=0
    final DateTime sunday = a.subtract(Duration(days: fromSunday));
    const List<String> labels = ['อา', 'จ', 'อ', 'พ', 'พฤ', 'ศ', 'ส'];
    return List<_DayData>.generate(7 * weeks, (i) {
      final DateTime d = sunday.add(Duration(days: i));
      final int diff = d.difference(t).inDays;
      return _DayData(labels[i % 7], d, _mockStatuses(diff), selected: d == sel);
    });
  }

  // Mock jobs per day, keyed by offset from today. Status is date-relative:
  // past-and-undone → overdue (red), today → yellow, future → blue; new orders
  // (orange) and completed (green) can appear on any day.
  // At most one dot per status in a single day.
  static List<JobStatus> _mockStatuses(int diff) {
    switch (diff) {
      case -2:
        return const [JobStatus.overdue, JobStatus.done];
      case -1:
        return const [JobStatus.overdue, JobStatus.done];
      case 0:
        return const [JobStatus.newOrder, JobStatus.today, JobStatus.done];
      case 1:
        return const [JobStatus.newOrder, JobStatus.upcoming];
      case 2:
        return const [JobStatus.upcoming, JobStatus.done];
      case 3:
        return const [JobStatus.upcoming];
      default:
        if (diff < -2) return const [JobStatus.done];
        return const []; // free day — no jobs
    }
  }

  @override
  State<HomeCalendarStrip> createState() => _HomeCalendarStripState();
}

class _HomeCalendarStripState extends State<HomeCalendarStrip> {
  late DateTime _anchorDate; // week + month currently shown
  DateTime? _selectedDate; // day with the filled circle (null = none)

  @override
  void initState() {
    super.initState();
    final DateTime n = widget.initialDate ?? DateTime.now();
    final DateTime d = DateTime(n.year, n.month, n.day);
    _anchorDate = d;
    _selectedDate = d; // today starts selected
  }

  // Tap a day / pick from the calendar → select it and jump to its week.
  void _selectDate(DateTime date) {
    final DateTime d = DateTime(date.year, date.month, date.day);
    setState(() {
      _selectedDate = d;
      _anchorDate = d;
    });
  }

  // Swipe → move the viewed week only; the selection stays put.
  void _setAnchor(DateTime date) {
    final DateTime d = DateTime(date.year, date.month, date.day);
    if (d == _anchorDate) return;
    setState(() => _anchorDate = d);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeCalendarHeader(
          date: _anchorDate,
          selectedView: widget.selectedView,
          onViewChanged: widget.onViewChanged,
          onMonthTap: widget.onMonthTap,
          onDatePicked: _selectDate,
        ),
        const SizedBox(height: 16.0),
        HomeWeekStrip(
          anchorDate: _anchorDate,
          selectedDate: _selectedDate,
          onAnchorChanged: _setAnchor,
          onDaySelected: (DateTime date) {
            _selectDate(date);
            widget.onDaySelected?.call(date.day);
          },
        ),
      ],
    );
  }
}

/// Top part of the calendar strip: the "AtlasHomeCare" wordmark, the month
/// selector, and the agenda / map / calendar view toggle. Kept separate from
/// [HomeWeekStrip] so the week row can pin as a sticky sliver header while this
/// part scrolls away.
class HomeCalendarHeader extends StatefulWidget {
  const HomeCalendarHeader({
    super.key,
    required this.date,
    this.selectedView = HomeCalendarView.agenda,
    this.onViewChanged,
    this.onMonthTap,
    this.onDatePicked,
  });

  final DateTime date;
  final HomeCalendarView selectedView;
  final ValueChanged<HomeCalendarView>? onViewChanged;
  final VoidCallback? onMonthTap;
  final ValueChanged<DateTime>? onDatePicked;

  @override
  State<HomeCalendarHeader> createState() => _HomeCalendarHeaderState();
}

class _HomeCalendarHeaderState extends State<HomeCalendarHeader> {
  late HomeCalendarView _selected = widget.selectedView;

  @override
  void didUpdateWidget(covariant HomeCalendarHeader oldWidget) {
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
          initialDate: widget.date,
          firstDate: DateTime(1900),
          lastDate: DateTime(2050),
          onChanged: (d) => widget.onDatePicked?.call(d),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        size: 16.0, color: HomeCalendarStrip._primaryText),
                    const SizedBox(width: 8.0),
                    Text(
                      formatThaiMonthYear(widget.date),
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: HomeCalendarStrip._primaryText,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Icon(Icons.unfold_more_rounded,
                        size: 16.0, color: HomeCalendarStrip._primaryText),
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
    );
  }
}

/// The horizontal week row of day capsules plus the bottom divider. Used both
/// inline (inside [HomeCalendarStrip]) and as the pinned sticky sliver header.
class HomeWeekStrip extends StatefulWidget {
  const HomeWeekStrip({
    super.key,
    required this.anchorDate,
    this.selectedDate,
    this.onAnchorChanged,
    this.onDaySelected,
  });

  final DateTime anchorDate;
  final DateTime? selectedDate;
  final ValueChanged<DateTime>? onAnchorChanged;
  final ValueChanged<DateTime>? onDaySelected;

  @override
  State<HomeWeekStrip> createState() => _HomeWeekStripState();
}

class _HomeWeekStripState extends State<HomeWeekStrip> {
  // Slide-in direction for the next rebuild: 1 = from the right (next week),
  // -1 = from the left (previous week), 0 = no animation (first build).
  int _dir = 0;

  @override
  void didUpdateWidget(covariant HomeWeekStrip oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.anchorDate.isAfter(oldWidget.anchorDate)) {
      _dir = 1;
    } else if (widget.anchorDate.isBefore(oldWidget.anchorDate)) {
      _dir = -1;
    }
  }

  void _shiftWeek(int weeks) => widget.onAnchorChanged
      ?.call(widget.anchorDate.add(Duration(days: 7 * weeks)));

  @override
  Widget build(BuildContext context) {
    // Tablets are wide enough to show a fortnight; phones stay on one week.
    final int weeks =
        MediaQuery.sizeOf(context).shortestSide >= 600 ? 2 : 1;
    final DateTime sunday = widget.anchorDate
        .subtract(Duration(days: widget.anchorDate.weekday % 7));
    final List<_DayData> days = HomeCalendarStrip.buildWeek(
        widget.anchorDate, widget.selectedDate, DateTime.now(),
        weeks: weeks);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onHorizontalDragEnd: (details) {
            final double v = details.primaryVelocity ?? 0;
            if (v < -80) {
              _shiftWeek(weeks); // swipe left → next week(s)
            } else if (v > 80) {
              _shiftWeek(-weeks); // swipe right → previous week(s)
            }
          },
          // Paint-only slide (Transform) keeps the row's layout height stable.
          child: TweenAnimationBuilder<double>(
            key: ValueKey<DateTime>(sunday),
            tween: Tween<double>(begin: _dir.toDouble(), end: 0.0),
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOut,
            builder: (context, value, child) => Transform.translate(
              offset: Offset(value * MediaQuery.of(context).size.width, 0),
              child: child,
            ),
            child: Row(
              spacing: 12.0,
              children: days
                  .map((d) => Expanded(
                        child: _DayCapsule(
                          data: d,
                          onTap: () => widget.onDaySelected?.call(d.date),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        // ── Bottom divider line (full-bleed to screen edges) ──────────────
        // Overflows the parent's 16px horizontal padding so the line spans the
        // full device width.
        SizedBox(
          height: 1.0,
          child: OverflowBox(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: 1.0,
            child: Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFD0D8E0), // gray_03
            ),
          ),
        ),
      ],
    );
  }
}

/// [SliverPersistentHeaderDelegate] for pinning [HomeWeekStrip] under the app
/// bar. Fixed height (no shrink), opaque background supplied by the child.
class HomeStickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  const HomeStickyHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      SizedBox.expand(child: child);

  @override
  bool shouldRebuild(covariant HomeStickyHeaderDelegate oldDelegate) =>
      oldDelegate.height != height || oldDelegate.child != child;
}

/// Collapsing sticky header for the calendar strip. Expanded it shows the full
/// strip ([expandedHeight]); as the user scrolls it shrinks to [collapsedHeight]
/// by clipping the top (wordmark + month + toggle) away, leaving just the week
/// capsule row pinned as an app bar. [child] must be exactly [expandedHeight]
/// tall so the bottom-anchored clip reveals the capsules.
class HomeCollapsingStripDelegate extends SliverPersistentHeaderDelegate {
  const HomeCollapsingStripDelegate({
    required this.expandedHeight,
    required this.collapsedHeight,
    required this.child,
    this.expandedColor = Colors.transparent,
    this.collapsedColor = Colors.transparent,
  });

  final double expandedHeight;
  final double collapsedHeight;
  final Widget child;

  /// Background at rest (fully expanded) and when fully collapsed. The delegate
  /// lerps between them as the header shrinks, so the pinned capsule bar can
  /// fade to a solid colour (e.g. the status-bar blue) only while scrolled.
  final Color expandedColor;
  final Color collapsedColor;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final double range = expandedHeight - collapsedHeight;
    final double t =
        range <= 0 ? 1.0 : (shrinkOffset / range).clamp(0.0, 1.0);
    // Expanded: a blue→light gradient (blends the profile bar into the strip).
    // As it collapses the light stops lerp to blue, so the pinned capsule bar
    // ends up a solid blue that matches the status bar.
    final Color mid = Color.lerp(expandedColor, collapsedColor, t) ?? expandedColor;
    // Anchor the full-height strip to the bottom and clip the overflow, so the
    // top (wordmark/month/toggle) is what disappears as the header shrinks.
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [collapsedColor, mid, mid],
          stops: const [0.0, 0.4, 0.8],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ClipRect(
        child: OverflowBox(
          alignment: Alignment.bottomCenter,
          minHeight: expandedHeight,
          maxHeight: expandedHeight,
          child: child,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant HomeCollapsingStripDelegate oldDelegate) =>
      oldDelegate.expandedHeight != expandedHeight ||
      oldDelegate.collapsedHeight != collapsedHeight ||
      oldDelegate.child != child ||
      oldDelegate.expandedColor != expandedColor ||
      oldDelegate.collapsedColor != collapsedColor;
}

enum HomeCalendarView { agenda, map, calendar }

/// Job status shown as a coloured dot on a day capsule.
/// newOrder = order to accept, today = due today, overdue = past & undone,
/// upcoming = tomorrow onward, done = completed.
enum JobStatus { newOrder, today, overdue, upcoming, done }

class _DayData {
  const _DayData(this.weekday, this.date, this.statuses,
      {this.selected = false});
  final String weekday;
  final DateTime date;
  final List<JobStatus> statuses;
  final bool selected;
  int get day => date.day;
}

class _Wordmark extends StatefulWidget {
  const _Wordmark();

  @override
  State<_Wordmark> createState() => _WordmarkState();
}

class _WordmarkState extends State<_Wordmark>
    with SingleTickerProviderStateMixin {
  // One light sweep across the text, then a pause before the next.
  static const Duration _sweepDuration = Duration(milliseconds: 1100);
  static const Duration _pauseDuration = Duration(milliseconds: 3000);

  static const String _text = 'AtlasHomeCare';
  static const TextStyle _style = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.3,
    height: 1.0,
    color: Colors.white, // painted by the gradient shader
  );

  // Behind the gradient text: transparent glyphs that cast only the drop
  // shadow (so the shadow isn't tinted/masked by the gradient ShaderMask).
  static const TextStyle _shadowStyle = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.3,
    height: 1.0,
    color: Colors.transparent,
    shadows: [
      Shadow(
        color: Color(0x2C000000),
        offset: Offset(0, 2),
        blurRadius: 4,
      ),
    ],
  );

  late final AnimationController _controller =
      AnimationController(vsync: this, duration: _sweepDuration);

  @override
  void initState() {
    super.initState();
    _loop();
  }

  Future<void> _loop() async {
    while (mounted) {
      await _controller.forward(from: 0.0);
      if (!mounted) return;
      await Future<void>.delayed(_pauseDuration);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Base: horizontal gradient across the whole wordmark: blue → navy → purple.
    final Widget gradientText = Stack(
      children: [
        const Text(_text, style: _shadowStyle),
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF004078), // secondary navy
              Color(0xFFB238EB), // purple
              Color(0xFFFD41B2), // pink
            ],
            stops: [0.0, 0.54327, 1.0],
          ).createShader(bounds),
          child: const Text(_text, style: _style),
        ),
      ],
    );

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // Bright band travels left → right across the glyphs.
        final double pos = -0.3 + _controller.value * 1.6;
        return Stack(
          children: [
            child!,
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                // Tilt the light band 45°.
                transform: const GradientRotation(-math.pi / 4),
                colors: const [
                  Color(0x00FFFFFF),
                  Color(0xD9FFFFFF), // ~85% white glint
                  Color(0x00FFFFFF),
                ],
                stops: [
                  (pos - 0.14).clamp(0.0, 1.0),
                  pos.clamp(0.0, 1.0),
                  (pos + 0.14).clamp(0.0, 1.0),
                ],
              ).createShader(bounds),
              child: const Text(_text, style: _style),
            ),
          ],
        );
      },
      child: gradientText,
    );
  }
}

class _ViewToggle extends StatelessWidget {
  const _ViewToggle({required this.selected, this.onChanged});

  final HomeCalendarView selected;
  final ValueChanged<HomeCalendarView>? onChanged;

  @override
  Widget build(BuildContext context) {
    // Tablets have room for the labelled segmented control from Figma;
    // phones keep the icon-only capsule.
    final bool labelled = MediaQuery.sizeOf(context).shortestSide >= 600;
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: HomeCalendarStrip._white,
        borderRadius: BorderRadius.circular(1000.0),
        boxShadow: kCapsuleShadow,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: labelled ? 0.0 : 8.0,
        children: [
          _ToggleIcon(
            svg: _cardViewSvg,
            label: labelled ? 'การ์ด' : null,
            active: selected == HomeCalendarView.agenda,
            onTap: () => onChanged?.call(HomeCalendarView.agenda),
          ),
          _ToggleIcon(
            icon: Icons.map_outlined,
            label: labelled ? 'แผนที่' : null,
            active: selected == HomeCalendarView.map,
            onTap: () => onChanged?.call(HomeCalendarView.map),
          ),
          _ToggleIcon(
            icon: Icons.calendar_month_rounded,
            label: labelled ? 'ปฏิทิน' : null,
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
      {this.icon,
      this.svg,
      this.label,
      required this.active,
      required this.onTap})
      : assert(icon != null || svg != null);

  static const Color _inactiveLabel = Color(0xFF5D6C87);

  final IconData? icon;
  final String? svg;

  /// When set, the item renders as a labelled segment (tablet layout).
  final String? label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active
        ? HomeCalendarStrip._white
        : (label != null ? _inactiveLabel : HomeCalendarStrip._primaryText);
    final Widget graphic = svg != null
        ? SvgPicture.string(
            svg!,
            width: 16.0,
            height: 16.0,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          )
        : Icon(icon, size: 16.0, color: color);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(200.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: label != null ? 32.0 : null,
        padding: label != null
            ? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0)
            : const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? HomeCalendarStrip._primary : Colors.transparent,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: active && label != null ? kCapsuleShadow : null,
        ),
        child: label == null
            ? graphic
            : Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  graphic,
                  const SizedBox(width: 8.0),
                  Text(
                    label!,
                    // Trim the Sarabun line box: with a 1.5 line-height the
                    // extra leading pushed the glyphs below the icon.
                    strutStyle: const StrutStyle(
                      fontSize: 16.0,
                      height: 1.0,
                      forceStrutHeight: true,
                    ),
                    style: GoogleFonts.sarabun(
                      color: color,
                      fontSize: 16.0,
                      height: 1.0,
                      letterSpacing: -0.096,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class _DayCapsule extends StatelessWidget {
  const _DayCapsule({required this.data, required this.onTap});

  final _DayData data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final bool isToday = data.date.year == now.year &&
        data.date.month == now.month &&
        data.date.day == now.day;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(200.0),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: HomeCalendarStrip._white,
          borderRadius: BorderRadius.circular(200.0),
          boxShadow: const [
            // Neutral black @ 5%, blur 8.
            BoxShadow(
              color: Color(0x0D000000),
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
            const SizedBox(height: 8.0),
            SizedBox(
              height: 6.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  data.statuses.length,
                  (i) => Container(
                    width: 7.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: HomeCalendarStrip.statusColors[data.statuses[i]],
                      borderRadius: BorderRadius.horizontal(
                        left: i == 0
                            ? const Radius.circular(10.0)
                            : Radius.zero,
                        right: i == data.statuses.length - 1
                            ? const Radius.circular(10.0)
                            : Radius.zero,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: 36.0,
              height: 36.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: data.selected
                    ? HomeCalendarStrip._primary
                    : Colors.transparent,
                shape: BoxShape.circle,
                // Today (when it isn't the selected day) is marked with a ring.
                border: !data.selected && isToday
                    ? Border.all(color: HomeCalendarStrip._primary, width: 1.5)
                    : null,
              ),
              child: Text(
                '${data.day}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: data.selected
                      ? HomeCalendarStrip._white
                      : (isToday
                          ? HomeCalendarStrip._primary
                          : HomeCalendarStrip._primaryText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
