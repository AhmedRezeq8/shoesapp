import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/providers/cart.dart';
import 'package:shoe_market/screens/cart_screen.dart';

import '../widgets/tab_bar_with_slider.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Discover',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: <Widget>[
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: Consumer<Cart>(
                builder: (_, cart, ch) => Badge(
                  badgeContent: Text(cart.itemCount.toString()),
                  child: ch ,
                ),
                child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      // print(product.id);
                      Navigator.of(context).pushNamed(
                       CartScreen.routeName
                        
                      );
                    },
                  ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                color: Colors.black,
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            TabBarWithSlider(),
          ],
        ),
      ),
    );
  }
}
