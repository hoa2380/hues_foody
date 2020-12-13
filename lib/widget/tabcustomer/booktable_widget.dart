import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';
import 'package:hues_foody_app/widget/chart/barchart.dart';

class BookTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            '20',
            style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20,),
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
          y1Color: Color(0xff14b774),
          y2Color: Color(0xffc3b9b9),
          y1Title: 'Tuần Này',
          y2Title: 'Tuần Trước',
        ),
      ],
    );
  }
}

