// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ✅ สำคัญ: ต้องมี package นี้ใน FlutterFlow > Custom Code > Packages
import 'package:fl_chart/fl_chart.dart';

class CGMChart extends StatefulWidget {
  const CGMChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CGMChart> createState() => _CGMChartState();
}

class _CGMChartState extends State<CGMChart> {
  /// ✅ Data (ไม่ใช้ค่าติดลบ)
  final List<FlSpot> spots = const [
    FlSpot(4.0, 70),
    FlSpot(4.5, 83),
    FlSpot(5.0, 92),
    FlSpot(5.5, 100),
    FlSpot(6.0, 107),
    FlSpot(6.5, 127),
    FlSpot(7.0, 70),
    FlSpot(7.5, 125),
    FlSpot(8.0, 120),
  ];

  /// ✅ Axis
  final double _minX = 4.0;
  final double _maxX = 8.0;
  final double _minY = 60;
  final double _maxY = 180;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ✅ Chart (scroll แนวนอน)
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 800,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: LineChart(
                    LineChartData(
                      minX: _minX,
                      maxX: _maxX,
                      minY: _minY,
                      maxY: _maxY,

                      /// grid
                      gridData: const FlGridData(
                        show: true,
                        verticalInterval: 0.5,
                        horizontalInterval: 30,
                      ),

                      borderData: FlBorderData(show: false),

                      /// axis labels
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 0.5,
                            reservedSize: 36,
                            getTitlesWidget: (value, meta) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  _formatTimeLabel(value),
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),

                      /// line
                      lineBarsData: _buildColoredLineBars(),
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// ✅ Y Axis ด้านขวา
          Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                final step = (_maxY - _minY) / 3;
                final yValue = (_minY + (step * (3 - index))).toInt();

                return Text(
                  '$yValue',
                  style: const TextStyle(fontSize: 10),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  /// ✅ สีตามระดับน้ำตาล
  Color _getGlucoseColor(double value) {
    if (value < 70) {
      return Colors.grey;
    } else if (value <= 100) {
      return Colors.green;
    } else if (value <= 125) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  /// ✅ สร้าง line ทีละ segment (multi color)
  List<LineChartBarData> _buildColoredLineBars() {
    final List<LineChartBarData> lines = [];

    for (int i = 0; i < spots.length - 1; i++) {
      final start = spots[i];
      final end = spots[i + 1];
      final avg = (start.y + end.y) / 2;

      final color = _getGlucoseColor(avg);

      lines.add(
        LineChartBarData(
          spots: [start, end],
          isCurved: true,
          curveSmoothness: 0.4,
          barWidth: 3,
          color: color,
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, bar, index) {
              return FlDotCirclePainter(
                radius: 3,
                color: _getGlucoseColor(spot.y),
              );
            },
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.15),
                color.withOpacity(0.02),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      );
    }

    return lines;
  }

  /// ✅ format เวลา
  String _formatTimeLabel(double value) {
    int hour = value.floor();
    int minute = (value - hour) == 0.5 ? 30 : 0;

    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}
