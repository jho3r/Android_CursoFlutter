import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Review('assets/img/people.jpg', 'Varuna Yasas', '1 review 5 comments', 'There is an amazin place in Sri Lanka', 5),
        new Review('assets/img/people.jpg', 'Varuna Yasas', '1 review 5 comments', 'There is an amazin place in Sri Lanka', 5),
        new Review('assets/img/people.jpg', 'Varuna Yasas', '1 review 5 comments', 'There is an amazin place in Sri Lanka', 5),
      ],
    );
  }
  
}