import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/bar.dart';
import 'package:hues_foody_app/widget/chart/barchart.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';

class TabFoodBasisTurnOver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: RoundedExpansionCard(
                    title: 'Toàn Hệ Thống',
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Icon(
                              Icons.money_outlined, color: Colors.white,),
                            SizedBox(width: 5,),
                            Text(
                              '200',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'TRIỆU',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Text(
                              'Tổng Doanh Thu Ngày',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),

                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_upward_outlined,
                              color: Colors.green,),
                            SizedBox(width: 5,),
                            Text(
                              '5%',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(width: 19,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Text(
                              'Hôm Qua',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),

                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_downward_outlined,
                              color: Colors.red,),
                            SizedBox(width: 5,),
                            Text(
                              '2%',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            SizedBox(width: 45,)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 10,),
                            Text(
                              '1 Tháng Trước',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: RoundedExpansionCard(
                    title: 'So Sánh Giữa Các Thành Phố',
                    children: [
                      Column(
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
                                'ĐVT: TỶ',
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
                                    Bar(x: 0, y1: 400, y2: 100),
                                    Bar(x: 1, y1: 350, y2: 250),
                                    Bar(x: 2, y1: 100, y2: 50),
                                    Bar(x: 3, y1: 200, y2: 150),
                                  ],
                                  bottomTitles: [
                                    'Hà Nội',
                                    'Đà Nẵng',
                                    'Hồ Chí Minh',
                                    'Cần Thơ',
                                  ],
                                  y1Color: Color(0xff14b774),
                                  y2Color: Color(0xffc3b9b9),
                                  divider: true,
                                  y1Title: 'Tháng Này',
                                  y2Title: 'Tháng Trước',
                                  columnWidth: 10,
                                  showGrid: true,
                                  gridStep: 100,

                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: RoundedExpansionCard(
                    title: 'So Sánh Giữa Các Cơ Sở',
                    children: [
                      Column(
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
                                    Bar(x: 0, y1: 400, y2: 100),
                                    Bar(x: 1, y1: 350, y2: 250),
                                    Bar(x: 2, y1: 100, y2: 50),
                                    Bar(x: 3, y1: 300, y2: 150),
                                    Bar(x: 4, y1: 200, y2: 50),
                                    Bar(x: 5, y1: 250, y2: 150),
                                  ],
                                  bottomTitles: [
                                    'CS1-HN',
                                    'CS2-HN',
                                    'CS3-HN',
                                    'CS1-ĐN',
                                    'CS2-ĐN',
                                    'CS1-HCM',

                                  ],
                                  y1Color: Color(0xff14b774),
                                  y2Color: Color(0xffc3b9b9),
                                  divider: true,
                                  y1Title: 'Tháng Này',
                                  y2Title: 'Tháng Trước',
                                  columnWidth: 10,
                                  showGrid: true,
                                  gridStep: 100,

                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: FlatButton(
                            onPressed: () => {},
                            color: Colors.green,
                            height: 40,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'XUẤT BÁO CÁO',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}