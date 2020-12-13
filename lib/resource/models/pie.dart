import 'package:flutter/material.dart';

class Pie {
  final String title;
  final String note;
  final Color color;
  final double value;

  Pie({this.title, this.note, this.color, this.value});

  @override
  String toString() {
    return 'Pie{title: $title, note: $note, color: $color, value: $value}';
  }
}