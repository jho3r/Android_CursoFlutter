import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/p1.jpg'),
          CardImage('assets/img/p2.jpg'),
          CardImage('assets/img/p3.jpg')
        ],
      ),
    );
  }
  
}