import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/providers/cart.dart';
import '../providers/product.dart';
import 'package:shoe_market/screens/product_details_screen.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return AnimationLimiter(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            child: Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                  color: product.bgColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          product.brand,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Consumer<Product>(
                          builder: (ctx, product, _) => IconButton(
                            color: Colors.white,
                            icon: product.isFavorite
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border),
                            onPressed: () {
                              product.isfav();
                            },
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            cart.addItem(product.id, product.title,product.price);
                          },
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text(
                      product.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .2),
                    ),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                          color: Colors.white, fontSize: 16, letterSpacing: .2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              height: 300,
              width: 300,
              top: 50,
              right: -70,
              child: AnimationConfiguration.staggeredGrid(
                columnCount: 2,
                position: 0,
                child: SlideAnimation(
                  horizontalOffset: 30,
                  duration: Duration(milliseconds: 600),
                  child: GestureDetector(
                    onTap: () {
                      print(product.id);
                      Navigator.of(context).pushNamed(
                        ProductDetails.routeName,
                        arguments: product.id,
                      );
                    },
                    child: Image.network(
                      product.imageUrl,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
