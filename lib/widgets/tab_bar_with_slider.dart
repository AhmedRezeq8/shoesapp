import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoe_market/providers/products.dart';

import 'item_widget.dart';

class TabBarWithSlider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return Column(
      children: <Widget>[
        Container(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 20, top: 15),
                child: InkWell(
                    child: Text(
                      products[index].brand,
                      style: TextStyle(
                          color: products[index].brand == 'Nike'
                              ? Colors.black
                              : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {}),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
          height: 350,
          itemCount: products.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value:  products[i],
            child: ItemWidget(),
          ),
          
          enableInfiniteScroll: false,
          enlargeCenterPage: false,
          autoPlay: false,
        ),
      ],
    );
  }
}
