import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final title_stars = Row (
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 320.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Bebas",
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star
          ],
        ),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple('Navigate')
      ],
    );
  }

}