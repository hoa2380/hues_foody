import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/role/staff/choosedatepage.dart';
import 'file:///E:/Flutter/hues_foody_app/lib/widget/dialog/dialogsearchtable_widget.dart';

class SearchTablePage extends StatefulWidget {
  @override
  _SearchTablePageState createState() => _SearchTablePageState();
}

class _SearchTablePageState extends State<SearchTablePage>
    with SingleTickerProviderStateMixin {
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
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )),
                  Container(
                    height: 109,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints.expand(height: 50),
                            child: TabBar(
                              controller: _controller,
                              indicatorColor: Colors.yellow,
                              tabs: [
                                Tab(text: "ĐẶT BÀN"),
                                Tab(text: "GÓI MÓN"),
                                Tab(text: "PHỤC VỤ"),
                                Tab(text: "THANH TOÁN"),
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
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                              ),
                              child: FlatButton(
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ChooseDatePage())
                                  )
                                },
                                color: Colors.green,
                                height: 45,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Text(
                                      'TẠO LỊCH HẸN MỚI',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                      textAlign: TextAlign.center,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: '20202',
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                      new BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(),
                                    ),
                                    suffixIcon: Icon(Icons.keyboard)),
                              ),
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'KẾT QUẢ TÌM KIẾM',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 20,),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Đả Tới Giờ Hẹn', style: TextStyle(fontSize: 15),),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Sắp Tới', style: TextStyle(fontSize: 15),),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Text('Đả Hủy', style: TextStyle(fontSize: 15),),
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 20,),
                        ]
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/4.png'),
                                fit: BoxFit.cover,
                              )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                          child: Container(
                            height: 266.4,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20.0)),
                            ),
                            child: ListView(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          showGeneralDialog(
                                            barrierDismissible: false,
                                            barrierColor: Colors.black.withOpacity(0.85),
                                            context: context,
                                            pageBuilder:(context, animation, secondaryAnimation) {
                                              return DialogSearchTable();
                                            },
                                          );
                                        },
                                        child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(30))
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      height: 100,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.greenAccent,
                                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80)),
                                                      ),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: Icon(
                                                          Icons.account_circle_rounded,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 25),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 15, bottom: 20),
                                                        child: Text(
                                                          'MĐC: 20202',
                                                          style: TextStyle(fontSize: 13),
                                                        ),
                                                      ),
                                                      Text(
                                                        'ANH DŨNG',
                                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                                      ),
                                                      Text(
                                                        '0933 999999',
                                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      height: 100,
                                                      width: 70,
                                                      decoration: BoxDecoration(
                                                          color: Colors.greenAccent,
                                                          borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.access_alarm,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            '9:00',
                                                            style: TextStyle(color: Colors.white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                                      child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80))
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Spacer(),
                                              Text(
                                                'KHÁCH ĐẢ ĐẾN',
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.playlist_add_check_sharp,
                                                color: Colors.white,
                                                size: 30,
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5 ,left: 25, right: 25),
                                      child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80))
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Spacer(),
                                              Text(
                                                'GỌI NGAY',
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.phone,
                                                color: Colors.white,
                                                size: 25,
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5 ,left: 25, right: 25),
                                      child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.redAccent,
                                              borderRadius: BorderRadius.horizontal(left: Radius.circular(80), right: Radius.circular(80))
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Spacer(),
                                              Text(
                                                'HỦY LỊCH HẸN',
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.close_rounded,
                                                color: Colors.white,
                                                size: 30,
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: Text("Home Body"),
                ),
                Container(
                  child: Text("Home Body"),
                ),
                Container(
                  child: Text("Home Body"),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
