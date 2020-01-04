import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/providers/cart.dart';
import 'package:shoe_market/providers/products.dart';

class CartItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final product = Provider.of<Products>(context, listen: false);
    //
    return Expanded(
      child: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (BuildContext context, int index) {
          String id = cart.items.values.toList()[index].id;
          String imageUrl = product.findById(id).imageUrl;
          String brand = product.findById(id).brand;
          double price = cart.items.values.toList()[index].price *
              cart.items.values.toList()[index].quantity;
          int quantity = cart.items.values.toList()[index].quantity;

          return Dismissible(
            direction: DismissDirection.endToStart,
            onDismissed: (direction){
             cart.removeItem(id); 
            },
            key: ValueKey(id),
            background: Container(
              padding: EdgeInsets.only(right: 20),
              color: Theme.of(context).errorColor,
              child: Icon(Icons.remove_shopping_cart ,size: 60,color: Colors.white,),
              alignment: Alignment.centerRight,

            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Positioned(
                          top: -15,
                          child: Image.network(
                            imageUrl,
                            height: 160,
                            width: 160,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        brand,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ ${price.toString()}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 26,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: IconButton(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(Icons.remove),
                                    onPressed: () {})),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(quantity.toString()),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 26,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: IconButton(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(Icons.add),
                                    onPressed: () {})),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
