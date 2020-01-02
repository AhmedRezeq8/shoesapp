import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shoe_market/models/product.dart';

class TabBarWithSlider extends StatelessWidget {
  const TabBarWithSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> product = [
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
        id: 'p4',
        title: 'A Pan',
        description: 'Prepare any meal you want.',
        price: 49.99,
        imageUrl:
            'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
        brand: 'Fila',
        bgColor: Colors.purple,
      ),
      Product(
        id: 'p4',
        title: 'A Pan',
        description: 'Prepare any meal you want.',
        price: 49.99,
        imageUrl:
            'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
        brand: 'Fila',
        bgColor: Colors.red,
      ),
      Product(
        id: 'p4',
        title: 'A Pan',
        description: 'Prepare any meal you want.',
        price: 49.99,
        imageUrl:
            'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
        brand: 'Fila',
        bgColor: Colors.orange,
      ),
    ];
    return Column(
      children: <Widget>[
        Container(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: product.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(left: 20, top: 15),
                child: InkWell(
                    child: Text(
                      product[index].brand,
                      style: TextStyle(
                          color: product[index].brand == 'Nike'
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
          itemCount: product.length,
          itemBuilder: (BuildContext context, int itemIndex) =>
              AnimationLimiter(
            child: Stack(
              overflow: Overflow.visible,
              // alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                        color: product[itemIndex].bgColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                product[itemIndex].brand,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(
                                color: Colors.white,
                                icon: Icon(Icons.favorite_border),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Text(
                            product[itemIndex].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: .2),
                          ),
                          Text(
                            product[itemIndex].price.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: .2),
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
                      position: itemIndex,
                      child: SlideAnimation(
                        horizontalOffset: 30,
                        duration: Duration(milliseconds: 600),
                        child: Image.network(
                          product[itemIndex].imageUrl,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          enableInfiniteScroll: false,
          enlargeCenterPage: false,
          autoPlay: false,
        ),
      ],
    );
  }
}
