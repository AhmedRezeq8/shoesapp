import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_market/providers/products.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product-detail';
  
  @override
  Widget build(BuildContext context) {
    final String productID =
        ModalRoute.of(context).settings.arguments as String;

    final lodedItems = Provider.of<Products>(context , listen: false).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(lodedItems.brand),
      ),
    );
  }
}
