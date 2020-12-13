import 'package:flutter/material.dart';
import 'package:hues_foody_app/page/login/rolepage.dart';
import 'package:hues_foody_app/page/role/staff/bookingviewmodel.dart';
import 'package:provider/provider.dart';
import 'splash/splash_screen.dart';
import 'package:flutter/services.dart' ;


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => BookingViewModel()..init(),
    ),
  ],
    child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      home: RolePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

