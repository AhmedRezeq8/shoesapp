import 'package:flutter/material.dart';

import '../widgets/tab_bar_with_slider.dart';
import '../widgets/customImage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

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
           margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                color: Colors.black,
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Container(
                height: 40,
           width: 40,
           margin: EdgeInsets.only(left: 10,right: 10),
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
            // CustomImage(),
          ],
        ),
      ),
    );
  }
}
