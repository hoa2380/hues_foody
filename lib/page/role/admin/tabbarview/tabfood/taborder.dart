import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/Flutter/hues_foody_app/lib/widget/chart/tabfood/foodorderchart_widget.dart';
import 'package:hues_foody_app/widget/custombutton_widget.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';
import 'package:hues_foody_app/widget/top_food_item.dart';

class TabOrder extends StatefulWidget {
  @override
  _TabOrderState createState() => _TabOrderState();
}

class _TabOrderState extends State<TabOrder> with TickerProviderStateMixin {

  _listDate(int length) {
    final _widgets = <CustomSelectButton>[];
    final currentDate = DateTime.now();
    _widgets.add(CustomSelectButton(
      child: Text('Hôm nay'),
      value: 0,
    ));
    for (var i = 1; i <= length; i++) {
      final date = currentDate.subtract(Duration(days: i));
      _widgets.add(CustomSelectButton(
        child: Text(date.day.toString()),
        value: date.millisecondsSinceEpoch,
      ));
    }
    return _widgets.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomSelect(
                buttons: _listDate(7),
                onChanged: (value) {},
                defaultSelect: 0,
                selectDecoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.yellow[600],
                      width: 2,
                    ),
                  ),
                ),
                selectStyle: TextStyle(
                    color: Colors.yellow[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                textStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
                space: 35,
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: <BoxShadow> [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0.0, 02),
                              blurRadius: 4.0,
                            ),
                          ]
                      ),
                      child: ExpansionTile(
                        title: Text('Nhà Hàng Hoa Mai 1 - Hà Nội',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        children: <Widget>[],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
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
                              SizedBox(height: 10,),
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TopFoodItem(
                        isFirst: false,
                        leading: '2',
                        title: 'TÔM HÙM B',
                        trailing: '200',
                        trailingSub: 'Lượt Đặt',
                        children: [
                          RoundedExpansionCard(
                            title: "Thống kê Theo Ngày",
                            children: <Widget>[
                              SizedBox(height: 10,),
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TopFoodItem(
                        isFirst: false,
                        leading: '3',
                        title: 'TÔM HÙM C',
                        trailing: '200',
                        trailingSub: 'Lượt Đặt',
                        children: [
                          RoundedExpansionCard(
                            title: "Thống kê Theo Ngày",
                            children: <Widget>[
                              SizedBox(height: 10,),
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TopFoodItem(
                        isFirst: false,
                        leading: '4',
                        title: 'TÔM HÙM D',
                        trailing: '200',
                        trailingSub: 'Lượt Đặt',
                        children: [
                          RoundedExpansionCard(
                            title: "Thống kê Theo Ngày",
                            children: <Widget>[
                              SizedBox(height: 10,),
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: TopFoodItem(
                        isFirst: false,
                        leading: '5',
                        title: 'TÔM HÙM E',
                        trailing: '200',
                        trailingSub: 'Lượt Đặt',
                        children: [
                          RoundedExpansionCard(
                            title: "Thống kê Theo Ngày",
                            children: <Widget>[
                              SizedBox(height: 10,),
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
                          )
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
