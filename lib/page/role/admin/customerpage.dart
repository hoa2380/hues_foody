import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabbasis.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabcustomer.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabfood.dart';
import 'package:hues_foody_app/page/role/admin/tabbarview/tabturnover.dart';

class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> with TickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: 70,
                        alignment: Alignment.centerLeft,
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                    Container(
                      height: 109,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              constraints: BoxConstraints.expand(height: 50),
                              child: TabBar(
                                controller: _controller,
                                indicatorColor: Colors.yellow,
                                tabs: [
                                  Tab(text: "KHÁCH HÀNG"),
                                  Tab(text: "MÓN ĂN"),
                                  Tab(text: "DOANH THU"),
                                  Tab(text: "CƠ SỞ"),
                                ],
                                labelStyle: TextStyle(fontSize: 15),
                                labelPadding: EdgeInsets.only(right: 5),
                                indicatorWeight: 5,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelColor: Colors.yellow,
                                unselectedLabelColor: Colors.white,
                                unselectedLabelStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 25,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/5.png',
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  TabCustomer(),
                  Tabfood(),
                  TabTurnover(),
                  TabBasis()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
