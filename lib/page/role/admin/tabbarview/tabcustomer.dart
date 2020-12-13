import 'package:flutter/material.dart';
import 'package:hues_foody_app/widget/custombutton_widget.dart';
import 'package:hues_foody_app/widget/dialog/dialogcustomer_widget.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';
import 'package:hues_foody_app/widget/tabcustomer/booktable_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customereight_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerfirst_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerfive_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerfour_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customersecond_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerseven_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customersix_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/customerthird_widget.dart';
import 'package:hues_foody_app/widget/tabcustomer/ratiotable_widget.dart';

class TabCustomer extends StatefulWidget {
  @override
  _TabCustomerState createState() => _TabCustomerState();
}

class _TabCustomerState extends State<TabCustomer> with TickerProviderStateMixin {

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
                'Thống Kê Số Lượng Khách Hàng',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
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
          Container(
            color: Colors.black,
            child: ListView(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: RoundedExpansionCard(
                          title: 'Nhà Hàng Hoa Mai 1 - Hà Hội',
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.person, color: Colors.white, size: 30,
                                ),
                                SizedBox(height: 135),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '250',
                                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Khách Đặt Bàn',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '200 ',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                                    ),
                                    Text(
                                      '(80%)',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Tỷ Lệ Khách Đến',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '50 ',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                                    ),
                                    Text(
                                      '(20%)',
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Tỷ Lệ Khách Hủy',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward_outlined,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '5%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 28,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      'Hôm Qua',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward_outlined,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '5%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 28,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      'Hôm Qua',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward_outlined,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '5%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 28,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      'Hôm Qua',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_downward_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '2%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 59,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      '1 Tháng Trước',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_downward_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '2%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 59,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      '1 Tháng Trước',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.arrow_downward_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '2%',
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 59,),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(width: 25,),
                                    Text(
                                      '1 Tháng Trước',
                                      style: TextStyle(color: Colors.white),
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
                                child: RoundedExpansionCard(
                                  title: 'Số Lượng Đặt Bàn',
                                  children: [
                                    BookTableWidget()
                                  ],
                                )
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                                child: RoundedExpansionCard(
                                  title: 'Tỷ Lệ Lấp Đầy Bàn',
                                  children: [
                                    RatioTableWidget()
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
                                  title: 'Khách Hàng Mới Tuần Này',
                                  children: [
                                    CustomerFirstWidget()
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
                                  title: 'Khách Lần Dầu Trở Lại',
                                  children: [
                                    CustomerSecondWidget()
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
                                  title: 'Khách Cũ Trở Lại',
                                  children: [
                                    CustomerThirdWidget()
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
                              child: ExpansionTile(
                                title: Container(
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  'Khách Hàng Chi Tiêu Nhiều Nhất',
                                                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Text(
                                                  'Top 5',
                                                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)
                                              )
                                            ]
                                        )
                                      ]
                                  ),
                                ),
                                children: <Widget>[
                                  CustomerFourWidget(),
                                ],
                              ),
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
                                  title: 'Thống Kê Khách Hàng Theo Khu Vực',
                                  children: [
                                    CustomerFiveWidget()
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
                                  title: 'Phân Loại Khách Hàng Theo Hạng',
                                  children: [
                                    CustomerSixWidget()
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
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: RoundedExpansionCard(
                                    title: 'Thông Kê Theo Độ Tuổi (Membership)',
                                    children: [
                                      CustomerSevenWidget(),
                                    ],
                                  )
                              ),
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
                                  title: 'Thông Kê Giới Tính (Membership)',
                                  children: [
                                    CustomerEightWidget()
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
                ]
            ),
          ),
        ],
      ),
    );
  }
}
