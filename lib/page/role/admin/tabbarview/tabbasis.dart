import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasis_customer.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasis_food.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasisfood/tabfoodbasis_turnover.dart';
import 'package:hues_foody_app/widget/custombutton_widget.dart';
import 'package:hues_foody_app/widget/dialog/dialogcustomer_widget.dart';
import 'package:intl/intl.dart';

class TabBasis extends StatefulWidget {
  @override
  _TabBasisState createState() => _TabBasisState();
}

class _TabBasisState extends State<TabBasis> with TickerProviderStateMixin {

  TabController _controllerbasis;

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
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerbasis = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'So Sánh Trong Hệ Thống',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 120,),
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
        SizedBox(height: 10),
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
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: TabBar(
            controller: _controllerbasis,
            tabs: [
              Tab(text: 'KHÁCH HÀNG',),
              Tab(text: 'MÓN ĂN',),
              Tab(text: 'DOANH THU',),
            ],
            labelPadding: EdgeInsets.all(0.0),
            indicatorColor: Colors.red,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: TabBarView(
              controller: _controllerbasis,
              children: [
                TabBasisCustomer(),
                TabBasisFood(),
                TabFoodBasisTurnOver(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
