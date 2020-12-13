import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DialogCustomer extends StatefulWidget {
  @override
  _DialogCustomerState createState() => _DialogCustomerState();
}

class _DialogCustomerState extends State<DialogCustomer> {
  int _value = 1;
  int _value2 = 1;
  int _value3 = 1;

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
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'CHỌN KIỂU XEM',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          DropdownButtonHideUnderline(
                              child: Expanded(
                                child: DropdownButton(
                                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(child: Text('Xem Theo Ngày'),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(child: Text('Xem Theo Tuần'),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(child: Text('Xem Theo Quý'),
                                      value: 3,
                                    ),
                                    DropdownMenuItem(child: Text('Xem Theo Tháng'),
                                      value: 4,
                                    ),
                                    DropdownMenuItem(child: Text('Xem Theo Năm'),
                                      value: 5,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },

                                ),
                              ),
                          ),
                          SizedBox(width: 10,)
                        ],
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SO SÁNH VỚI',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            DropdownButtonHideUnderline(
                              child: Expanded(
                                child: DropdownButton(
                                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                                  value: _value2,
                                  items: [
                                    DropdownMenuItem(child: Text('Hôm Nay'),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(child: Text('Hôm Qua'),
                                      value: 2,
                                    ),

                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value2 = value;
                                    });
                                  },

                                ),
                              ),
                            ),
                            SizedBox(width: 10,)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            DropdownButtonHideUnderline(
                              child: Expanded(
                                child: DropdownButton(
                                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                                  value: _value3,
                                  items: [
                                    DropdownMenuItem(child: Text('Ngày Này Năm Trước'),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(child: Text('Hôm Nay'),
                                      value: 2,
                                    ),

                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value3 = value;
                                    });
                                  },

                                ),
                              ),
                            ),
                            SizedBox(width: 10,)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(height: 15,),
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
                          color: Colors.yellow[700],
                          height: 40,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'ÁP DỤNG',
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
            ],
          ),
        ),
      ),
    );
  }
}
