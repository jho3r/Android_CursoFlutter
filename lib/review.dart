import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "asset/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1review 5 photos";
  String comment = "THere is an amaizing place in Sri Lanka";
  int rating = 5;

  Review(this.pathImage, this.name, this.details, this.comment, this.rating);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Lato',
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20,
        right: 10
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        left: 2,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
        size: 13,
      ),
    );

    final info_stars = Row (
      children: [
      userInfo,
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

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        info_stars,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }

}