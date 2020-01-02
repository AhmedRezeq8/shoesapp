import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
// import 'screens/product_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Color(0xff557ddc),
        accentColor: Color(0xfffa3c67),
        fontFamily: 'OpenSans'
      ),
    );
  }
}
