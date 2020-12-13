import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class Line {
  final List<FlSpot> spots;
  final Color color;
  final String note;

  Line({this.spots, this.color, this.note});

  @override
  String toString() {
    return 'Line{spots: $spots, color: $color, note: $note}';
  }
}