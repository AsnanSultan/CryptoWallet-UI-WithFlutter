import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// ignore: use_key_in_widget_constructors
class BitcoinLineChart extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xFFFC8131),
    const Color(0xFFFEB933),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 18,
        minY: 0,
        maxY: 8,
        titlesData: FlTitlesData(show: false),
        gridData: FlGridData(
          show: false,
          drawVerticalLine: false,
        ),
        borderData: FlBorderData(
          show: false,
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 5.8),
              FlSpot(2, 7),
              FlSpot(4, 6.99),
              FlSpot(6, 6.97),
              FlSpot(8, 7.5),
              FlSpot(10, 7.95),
              FlSpot(12, 8),
              FlSpot(14, 7.5),
              FlSpot(16, 7),
              FlSpot(18, 7),
            ],
            isCurved: true,
            colors: gradientColors,
            barWidth: 2,
            dotData: FlDotData(show: false),
            show: true,
            belowBarData: BarAreaData(
              show: true,
              colors: [const Color(0xFFFFF5EA), const Color(0xFFFFF5EA)],
            ),
          ),
        ],
      ),
    );
  }
}
