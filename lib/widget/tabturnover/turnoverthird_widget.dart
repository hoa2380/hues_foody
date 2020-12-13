import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/line.dart';
import 'package:hues_foody_app/widget/chart/tabturnover/turnoverthirdchart.dart';

class TurnOverThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                  child: TurnOverThirdChart(
                    lines: [
                      Line(
                          spots: [
                            FlSpot(0, 750),
                            FlSpot(2, 400),
                            FlSpot(3, 350),
                            FlSpot(4, 480),
                            FlSpot(5, 204),
                            FlSpot(6, 306),
                          ],
                          color: Colors.blue,
                      ),
                      Line(
                        spots: [
                          FlSpot(0, 700),
                          FlSpot(2, 310),
                          FlSpot(3, 244),
                          FlSpot(4, 360),
                          FlSpot(5, 420),
                          FlSpot(6, 346),
                        ],
                        color: Colors.red,
                      ),
                      Line(
                        spots: [
                          FlSpot(0, 310),
                          FlSpot(2, 420),
                          FlSpot(3, 500),
                          FlSpot(4, 510),
                          FlSpot(5, 430),
                          FlSpot(6, 100),
                        ],
                        color: Colors.blue[100],
                      ),
                      Line(
                        spots: [
                          FlSpot(0, 560),
                          FlSpot(2, 400),
                          FlSpot(3, 350),
                          FlSpot(4, 630),
                          FlSpot(5, 420),
                          FlSpot(6, 300),
                        ],
                        color: Colors.red[100],
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(width: 20,)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Divider(
            color: Colors.black,
            height: 20,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tuần Này :', style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Tuần Trước :', style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Khách Hàng',),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Khách Hàng',),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Doanh Thu',),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Colors.red[100],
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Doanh Thu',),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
