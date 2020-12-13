import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/line.dart';

class TurnOverThirdChart extends StatelessWidget {

  final List<Line> lines;

  const TurnOverThirdChart({Key key, this.lines}) : super(key: key);

  _lineData() {
    final _lineData = <LineChartBarData>[];
    for (int i = 0; i < lines.length; i++) {
      _lineData.add(
        LineChartBarData(
          spots: lines[i].spots,
          colors: [lines[i].color],
          isCurved: false,
          barWidth: 3,
          dotData: FlDotData(show: false),
        ),
      );
    }
    return _lineData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.greenAccent,
              fitInsideHorizontally: true,
              fitInsideVertically: true,
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: true,
              getTextStyles: (value) => TextStyle(color: Colors.black87),
              checkToShowTitle: (min, max, side, interval, value) {
                if (value % 250 == 0) {
                  return true;
                } else {
                  return false;
                }
              },
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (value) => TextStyle(color: Colors.black87),
              getTitles: (value) {
                final _bottomTitles = [
                  'T2',
                  'T3',
                  'T4',
                  'T5',
                  'T6',
                  'T7',
                  'CN'
                ];
                if (value <= _bottomTitles.length) {
                  return _bottomTitles[value.toInt()];
                } else {
                  return '';
                }
              },
            ),
          ),
          lineBarsData: _lineData(),
        ),
      ),
    );
  }
}
