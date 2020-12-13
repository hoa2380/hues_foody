import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';

import '../chart/barchart.dart';


class TurnOverFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              'ĐVT: TRIỆU',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,),
            ),
            SizedBox(width: 20,)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              child: BarChartWidget(
                [
                  Bar(x: 0, y1: 400, y2: 100,),
                  Bar(x: 1, y1: 300, y2: 1),
                  Bar(x: 2, y1: 100, y2: 50),
                  Bar(x: 3, y1: 250, y2: 150),
                  Bar(x: 4, y1: 200, y2: 150),
                  Bar(x: 5, y1: 350, y2: 200),
                  Bar(x: 6, y1: 150, y2: 100),
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
                showGrid: true,
                gridStep: 100,
                divider: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

