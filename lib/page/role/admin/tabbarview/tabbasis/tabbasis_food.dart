import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasisfood/tabfoodbasis_order.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasisfood/tabfoodbasis_rework.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis/tabbasisfood/tabfoodbasis_turnover.dart';
import 'package:hues_foody_app/widget/rounded_exspansion.dart';

class TabBasisFood extends StatefulWidget {
  @override
  _TabBasisFoodState createState() => _TabBasisFoodState();
}

class _TabBasisFoodState extends State<TabBasisFood> with TickerProviderStateMixin {

  TabController _controllerbsfood;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerbsfood = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: RoundedExpansionCard(
              title: 'Hà Hội',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: TabBar(
              controller: _controllerbsfood,
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
            child: TabBarView(
              controller: _controllerbsfood,
              children: [
                TabFoodBasisOrder(),
                Container(),
                Container(),
                // TabFoodBasisTurnOver(),
                // TabFoodBasisRework()
              ],
            ),
          )
        ],
      ),
    );
  }
}

