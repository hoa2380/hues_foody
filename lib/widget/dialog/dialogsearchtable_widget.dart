import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogSearchTable extends StatefulWidget {
  @override
  _DialogSearchTableState createState() => _DialogSearchTableState();
}

class _DialogSearchTableState extends State<DialogSearchTable> {

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 14),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'MÃ ĐẶT CHỔ: 20202',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '0',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Bàn Số',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '1',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Khu Vực',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '3',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Tầng',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white,
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 25,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'ANH DŨNG',
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Khách Hàng',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '0933 999999',
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Tầng',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(width: 25,),
                ],
              ),
              SizedBox(height: 100,),
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
          ),
        ),
      ),
    );
  }
}
