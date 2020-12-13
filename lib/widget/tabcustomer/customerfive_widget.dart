import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/pie.dart';
import 'package:hues_foody_app/widget/chart/piechart.dart';
class CustomerFiveWidget extends StatelessWidget {
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
                        value: 65,
                        title:' 65%',
                        color: Color(0xff4fd968),
                      ),
                      Pie(
                        value: 35,
                        title:' 35%',
                        color: Color(0xff222623),
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
                        value: 60,
                        title:' 60%',
                        color: Color(0xff4fd968),
                      ),
                      Pie(
                        value: 40,
                        title:' 40%',
                        color: Color(0xff222623),
                      )
                    ],
                  ),
                  SizedBox(height: 35,),
                  Text('HÔM QUA', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
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
                            color: Color(0xff4fd968),
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('HÀ NỘI', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),

                ],
              ),
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
                      Text('TOÀN QUỐC', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
