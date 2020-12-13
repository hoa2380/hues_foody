import 'package:flutter/material.dart';
import 'package:hues_foody_app/resource/models/pie.dart';
import 'package:hues_foody_app/widget/chart/piechart.dart';
import 'package:hues_foody_app/widget/chart/tabfood/foodorderchart_widget.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';
import 'package:hues_foody_app/widget/top_food_item.dart';

class TabFoodBasisOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.sort,),
                              SizedBox(width: 5,),
                              Text('CAO NHẤT', style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 8,),
                              Icon(Icons.sort),
                              SizedBox(width: 5,),
                              Text('THẤP NHẤT', style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),

                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("TOP 5", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white,),
                            SizedBox(width: 10,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TopFoodItem(
                    isFirst: true,
                    leading: '1',
                    title: 'TÔM HÙM A',
                    trailing: '200',
                    trailingSub: 'Lượt Đặt',
                    children: [
                      RoundedExpansionCard(
                        title: "Thống kê Theo Ngày",
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xff14b774),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Nay', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                              color: Color(0xffc3b9b9),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Qua', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FoodOrderChartWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      RoundedExpansionCard(
                        title: 'Toàn Quốc',
                        children: [
                          PieChartWidget(
                            pies: [
                              Pie(
                                value: 95,
                                title: ' 95%',
                                color: Color(0xff222623),
                              ),
                              Pie(
                                value: 5,
                                title: ' 5%',
                                color: Color(0xff4fd968),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TopFoodItem(
                    isFirst: false,
                    leading: '2',
                    title: 'TÔM HÙM B',
                    trailing: '180',
                    trailingSub: 'Lượt Đặt',
                    children: [
                      RoundedExpansionCard(
                        title: "Thống kê Theo Ngày",
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xff14b774),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Nay', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                              color: Color(0xffc3b9b9),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Qua', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FoodOrderChartWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      RoundedExpansionCard(
                        title: 'Toàn Quốc',
                        children: [
                          PieChartWidget(
                            pies: [
                              Pie(
                                value: 95,
                                title: ' 95%',
                                color: Color(0xff222623),
                              ),
                              Pie(
                                value: 5,
                                title: ' 5%',
                                color: Color(0xff4fd968),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TopFoodItem(
                    isFirst: false,
                    leading: '3',
                    title: 'TÔM HÙM C',
                    trailing: '160',
                    trailingSub: 'Lượt Đặt',
                    children: [
                      RoundedExpansionCard(
                        title: "Thống kê Theo Ngày",
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xff14b774),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Nay', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                              color: Color(0xffc3b9b9),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Qua', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FoodOrderChartWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      RoundedExpansionCard(
                        title: 'Toàn Quốc',
                        children: [
                          PieChartWidget(
                            pies: [
                              Pie(
                                value: 95,
                                title: ' 95%',
                                color: Color(0xff222623),
                              ),
                              Pie(
                                value: 5,
                                title: ' 5%',
                                color: Color(0xff4fd968),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TopFoodItem(
                    isFirst: false,
                    leading: '4',
                    title: 'TÔM HÙM D',
                    trailing: '140',
                    trailingSub: 'Lượt Đặt',
                    children: [
                      RoundedExpansionCard(
                        title: "Thống kê Theo Ngày",
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xff14b774),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Nay', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                              color: Color(0xffc3b9b9),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Qua', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FoodOrderChartWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      RoundedExpansionCard(
                        title: 'Toàn Quốc',
                        children: [
                          PieChartWidget(
                            pies: [
                              Pie(
                                value: 95,
                                title: ' 95%',
                                color: Color(0xff222623),
                              ),
                              Pie(
                                value: 5,
                                title: ' 5%',
                                color: Color(0xff4fd968),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TopFoodItem(
                    isFirst: false,
                    leading: '5',
                    title: 'TÔM HÙM E',
                    trailing: '120',
                    trailingSub: 'Lượt Đặt',
                    children: [
                      RoundedExpansionCard(
                        title: "Thống kê Theo Ngày",
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Color(0xff14b774),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Nay', style: TextStyle(fontWeight: FontWeight.bold),),
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
                                              color: Color(0xffc3b9b9),
                                              shape: BoxShape.circle
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Text('Hôm Qua', style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FoodOrderChartWidget(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      RoundedExpansionCard(
                        title: 'Toàn Quốc',
                        children: [
                          PieChartWidget(
                            pies: [
                              Pie(
                                value: 95,
                                title: ' 95%',
                                color: Color(0xff222623),
                              ),
                              Pie(
                                value: 5,
                                title: ' 5%',
                                color: Color(0xff4fd968),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
