import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';
import '../chart/barchart.dart';

class CustomerSevenWidget extends StatelessWidget {
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
              'ĐVT: KHÁCH HÀNG',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
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
                  Bar(x: 0, y1: 70, y2: 50),
                  Bar(x: 1, y1: 25, y2: 10),
                  Bar(x: 2, y1: 50, y2: 20),
                  Bar(x: 3, y1: 60, y2: 4),
                  Bar(x: 4, y1: 75, y2: 50),
                ],
                bottomTitles: [
                  '<18',
                  '18-25',
                  '25-35',
                  '35-50',
                  '35-50',
                  '50',
                ],
                y1Color: Color(0xff14b774),
                y2Color: Color(0xffc3b9b9),
                y1Title: 'Tuần Này',
                y2Title: 'Tuần Trước',
                columnWidth: 10,
                showGrid: true,
                gridStep: 25,

              ),
            ),
            SizedBox(width: 40,)
          ],
        )
      ],
    );
  }
}
