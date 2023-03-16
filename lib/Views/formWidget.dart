

import 'package:apartment_housting/Models/appConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class reviewForm extends StatefulWidget {

  reviewForm({super.key, required this.title});

  final String title;
  @override
  _reviewFormState createState() => _reviewFormState();

}

class _reviewFormState extends State<reviewForm>{
  double rating = 2.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your review",
                    ),
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: RatingBar.builder(
                    itemPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 2),
                      itemSize: 40.0,
                      minRating: 1,
                      maxRating: 5,
                      allowHalfRating: true,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                      itemBuilder: (BuildContext context, int index) =>
                          Icon(
                            Icons.star, color: Colors.amber,
                          ),
                    ),
                ),
                ],
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: MaterialButton(
              onPressed: () {},
              child: Text("Submit"),
              color: Colors.blue,
            ),
          )
        ],
      ),

    )
    );
  }
}