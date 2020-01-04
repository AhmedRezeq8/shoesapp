import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/providers/cart.dart';
import 'package:shoe_market/widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My Bag',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  cart.itemCount > 1
                      ? 'Total ${cart.itemCount.toString()} items'
                      : 'Total ${cart.itemCount.toString()} item',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
          ),
           CartItemsWidget(),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[


                
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ ${cart.totalAmount}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                
                Spacer(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    color: Color(0xfffa3c67),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                ),
               
              ],
            ),
          )
        ],
      ),
    );
  }
}
