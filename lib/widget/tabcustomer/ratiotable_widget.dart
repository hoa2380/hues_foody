import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';
import '../chart/barchart.dart';

class RatioTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 50,),
        BarChartWidget(
          [
            Bar(x: 0, y1: 5, y2: 2,),
            Bar(x: 1, y1: 3, y2: 1),
            Bar(x: 2, y1: 4, y2: 2),
            Bar(x: 3, y1: 7, y2: 4),
            Bar(x: 4, y1: 6, y2: 2),
            Bar(x: 5, y1: 2, y2: 1),
            Bar(x: 6, y1: 1, y2: 3),
          ],
          bottomTitles: [
            'T2',
            'T3',
            'T4',
            'T5',
            'T6',
            'T7',
            'CN'
          ],
          y1Color: Color(0xffffd34b),
          y2Color: Color(0xffc3b9b9),
          y1Title: 'Tuần Này',
          y2Title: 'Tuần Trước',
        ),
      ],
    );
  }
}
