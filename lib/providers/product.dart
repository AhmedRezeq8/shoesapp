import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String brand;
  final String description;
  final double price;
  final String imageUrl;
  final Color bgColor;
  bool isFavorite;
  Product({
    @required this.id,
    @required this.title,
    @required this.brand,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    @required this.bgColor,

    this.isFavorite =false,
  });

 

 void isfav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
