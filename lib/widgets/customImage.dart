import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: <Widget>[
        Container(
          alignment: AlignmentDirectional.center,
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(30)),
          child: Text(''),
        ),
        Image.network(
          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
          width: 350,
          height: 350,
        ),
        Text('data'),
        //  Positioned(
        //         right: -50,
        //         width: 300,
        //         child: Image.network(
        //          'https://www.searchpng.com/wp-content/uploads/2019/01/Nike-Shoe-PNG-715x715.png',
        //           fit: BoxFit.cover,
        //           alignment: Alignment.center,
        //           width: 350,
        //           height: 350,
        //         ),
        //       ),
              Text('datsssa'),
      ],
    );
  }
}
