import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Zoom Freak 1 Soul ',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://i.pinimg.com/originals/87/76/fe/8776fe18620c679975c610f541b6e829.png',
      brand: 'Nike',
      bgColor: Colors.blue,
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
      brand: 'Addidas',
      bgColor: Colors.amber,
    ),
    Product(
      id: 'p3',
      title: 'Air Jordan 1 High React',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://img.pngio.com/shoe-png-hd-transparent-shoe-hdpng-imag-111148-png-images-pngio-nike-shoe-png-1276_877.png',
      brand: 'Jordon',
      bgColor: Colors.green,
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'http://pngimg.com/uploads/running_shoes/running_shoes_PNG5823.png',
      brand: 'puma',
      bgColor: Colors.pink,
    ),
    Product(
      id: 'p5',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
      brand: 'Fila',
      bgColor: Colors.purple,
    ),
    Product(
      id: 'p6',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
      brand: 'Fila',
      bgColor: Colors.red,
    ),
    Product(
      id: 'p7',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
      brand: 'Fila',
      bgColor: Colors.orange,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
