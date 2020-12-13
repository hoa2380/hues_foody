import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/pie.dart';
import 'package:hues_foody_app/widget/chart/piechart.dart';

class CustomerSixWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  PieChartWidget(
                    pies: [
                      Pie(
                        value: 25,
                        title:' 25%',
                        color: Color(0xff4fd968),
                      ),
                      Pie(
                        value: 35,
                        title:' 25%',
                        color: Color(0xff222623),
                      ),
                      Pie(
                        value: 50,
                        title:' 50%',
                        color: Color(0xfff2bd19),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text('HÔM NAY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  PieChartWidget(
                    pies: [
                      Pie(
                        value: 25,
                        title:' 25%',
                        color: Color(0xff4fd968),
                      ),
                      Pie(
                        value: 30,
                        title:' 30%',
                        color: Color(0xff222623),
                      ),
                      Pie(
                        value: 45,
                        title:' 45%',
                        color: Color(0xfff2bd19),
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Text('HÔM QUA', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ],
              ),
            ),
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
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Color(0xfff2bd19),
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('VIP 1', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Color(0xff4fd968),
                          shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text('VIP 2', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),

              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Color(0xff222623),
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('VIP 3', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
