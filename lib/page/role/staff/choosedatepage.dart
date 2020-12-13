import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:hues_foody_app/page/role/staff/bookingviewmodel.dart';
import 'package:hues_foody_app/widget/horizontal_time_picker.dart';
import 'package:provider/provider.dart';

class ChooseDatePage extends StatefulWidget {
  @override
  _ChooseDatePageState createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
  DateTime _selectedValue = DateTime.now();


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BookingViewModel>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/4.png'),
                      fit: BoxFit.cover,
                    )),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'CHỌN NGÀY',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Colors.green,
                        selectedTextColor: Colors.white,
                        onDateChange: (date) {
                          // New date selected
                          setState(() {
                            _selectedValue = date;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'CHỌN GIỜ',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: HorizontalTimePicker(
                        key: UniqueKey(),
                        startTimeInHour: 15,
                        endTimeInHour: 24,
                        dateForTime: DateTime.now(),
                        selectedTimeTextStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Helvetica Neue",
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          height: 1.0,
                        ),
                        timeTextStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Helvetica Neue",
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          height: 1.0,
                        ),
                        defaultDecoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border.fromBorderSide(BorderSide(
                            color: Color.fromARGB(255, 151, 151, 151),
                            width: 1,
                            style: BorderStyle.solid,
                          )),
                          borderRadius:
                          BorderRadius.all(Radius.circular(9)),
                        ),
                        selectedDecoration: const BoxDecoration(
                          color: Colors.yellowAccent,
                          border: Border.fromBorderSide(BorderSide(
                            color: Color.fromARGB(255, 151, 151, 151),
                            width: 1,
                            style: BorderStyle.solid,
                          )),
                          borderRadius:
                          BorderRadius.all(Radius.circular(9)),
                        ),
                        disabledDecoration: const BoxDecoration(
                          color: Colors.black26,
                          border: Border.fromBorderSide(BorderSide(
                            color: Color.fromARGB(255, 151, 151, 151),
                            width: 1,
                            style: BorderStyle.solid,
                          )),
                          borderRadius:
                          BorderRadius.all(Radius.circular(9)),
                        ),
                        showDisabled: true,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'CHỌN VỊ TRÍ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Số Lượng Khách',
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    borderSide: const BorderSide(),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: 'Khu 1',
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                      new BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(),
                                    ),
                                    suffixIcon: Icon(Icons.arrow_drop_down)),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: 'Tầng 3',
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                      new BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(),
                                    ),
                                    suffixIcon: Icon(Icons.arrow_drop_down)),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                                child: FlatButton(
                                  onPressed: () => provider.nextPage(),
                                  color: Colors.green,
                                  height: 50,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Spacer(),
                                      Text(
                                        'TIẾP THEO',
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
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
