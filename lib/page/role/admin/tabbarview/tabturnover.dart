import 'package:flutter/material.dart';
import 'package:hues_foody_app/widget/custombutton_widget.dart';
import 'package:hues_foody_app/widget/dialog/dialogcustomer_widget.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerfour_widget.dart';
import 'package:hues_foody_app/widget/tabturnover/turnoverfirst_widget.dart';
import 'package:hues_foody_app/widget/tabturnover/turnoversecond_widget.dart';
import 'package:hues_foody_app/widget/tabturnover/turnoverthird_widget.dart';
import 'package:intl/intl.dart';

class TabTurnover extends StatefulWidget {
  @override
  _TabTurnoverState createState() => _TabTurnoverState();
}

class _TabTurnoverState extends State<TabTurnover> with TickerProviderStateMixin {

  _listWeek(int weeks) {
    final _list = <CustomSelectButton>[]..add(
      CustomSelectButton(
        child: Text('Tuần này'),
        value: 0,
      ),
    );
    var currentDate = DateTime.now();
    for (int i = 0; i < weeks; i++) {
      final endDate = currentDate.subtract(
        Duration(days: currentDate.weekday),
      );
      final startDate = endDate.subtract(
        Duration(days: DateTime.daysPerWeek),
      );
      currentDate = endDate;
      if (startDate.month == endDate.month) {
        _list.add(
          CustomSelectButton(
            child: Text(
                '${DateFormat('d').format(startDate)}-${DateFormat('d/M').format(endDate)}'),
            value: '${startDate.day}.${endDate.day}',
          ),
        );
      } else {
        _list.add(CustomSelectButton(
          child: Text(
              '${DateFormat('d/M').format(startDate)}-${DateFormat('d/M').format(endDate)}'),
          value: '${startDate.day}.${endDate.day}',
        ));
      }
    }

    return _list.reversed.toList();
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Row(
            children: <Widget>[
              SizedBox(width: 10,),
              Text(
                '10:00 20/05/2020',
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(width: 10,),
              Text(
                'Thống Kê Doanh Thu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 100,),
              Spacer(),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showGeneralDialog(
                        barrierDismissible: false,
                        barrierColor: Colors.black.withOpacity(0.85),
                        context: context,
                        pageBuilder:(context, animation, secondaryAnimation) {
                          return DialogCustomer();
                        },
                      );
                    },
                    child: Icon(
                        Icons.settings
                    ),
                  )
              )
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: CustomSelect(
              buttons: _listWeek(4),
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
                  children: [
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
                                Icon(Icons.money_outlined, color: Colors.white,),
                                SizedBox(width: 5,),
                                Text(
                                  '200',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  'TRIỆU',
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 10,),
                                Text(
                                  'Tổng Doanh Thu Ngày',
                                  style: TextStyle(color: Colors.white,  fontSize: 12),
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
                                Icon(Icons.arrow_upward_outlined, color: Colors.green,),
                                SizedBox(width: 5,),
                                Text(
                                  '5%',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
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
                                  style: TextStyle(color: Colors.white,  fontSize: 12),
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
                                Icon(Icons.arrow_downward_outlined, color: Colors.red,),
                                SizedBox(width: 5,),
                                Text(
                                  '2%',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
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
                                  style: TextStyle(color: Colors.white,  fontSize: 12),
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
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: RoundedExpansionCard(
                                title: 'BIỂU ĐỒ DOANH THU',
                                children: [
                                  TurnOverFirstWidget()
                                ],
                              )
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
                              child: RoundedExpansionCard(
                                title: 'BIỂU ĐỒ KHÁCH HÀNG',
                                children: [
                                  TurnOverSecondWidget()
                                ],
                              )
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
                              child: RoundedExpansionCard(
                                title: 'Tương Quan Khách Hàng/Doanh Thu',
                                children: [
                                  TurnOverThirdWidget()
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: ExpansionTile(
                              title: Text(
                                  'Khách Hàng Chi Tiêu Nhiều Nhất',
                                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)
                              ),
                              children: <Widget>[
                                CustomerFourWidget(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
