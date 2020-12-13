import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabfood/taborder.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabfood/tabrevenue.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabfood/tabrework.dart';
import 'package:hues_foody_app/widget/dialog/dialogcustomer_widget.dart';

class Tabfood extends StatefulWidget {
  @override
  _TabfoodState createState() => _TabfoodState();
}

class _TabfoodState extends State<Tabfood> with TickerProviderStateMixin {

  TabController _controllerfood;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerfood = new TabController(length: 3, vsync: this);
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
              'Thống Kê Món Ăn',
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
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: TabBar(
            controller: _controllerfood,
            tabs: [
              Tab(text: 'LƯỢT ĐẶT',),
              Tab(text: 'DOANH THU',),
              Tab(text: 'LÀM LẠI',),
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
              controller: _controllerfood,
              children: [
                TabOrder(),
                TabRevenue(),
                TabReWork(),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
