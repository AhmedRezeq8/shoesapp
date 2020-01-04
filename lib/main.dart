import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/screens/cart_screen.dart';

import 'providers/cart.dart';
import 'providers/products.dart';
import 'screens/home_screen.dart';
import 'screens/product_details_screen.dart';
// import 'screens/product_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
          ChangeNotifierProvider(
          create: (ctx) => Cart(),

        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: ThemeData(
            primaryColor: Color(0xff557ddc),
            accentColor: Color(0xfffa3c67),
            fontFamily: 'OpenSans'),
        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
