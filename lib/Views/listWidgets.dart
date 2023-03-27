import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:apartment_housting/Models/appConstants.dart';


class ReviewListTile extends StatefulWidget{

  ReviewListTile({super.key, required this.title});

  final String title;

  @override
  State<ReviewListTile> createState() => _ReviewListTileState();
}

class _ReviewListTileState extends State<ReviewListTile> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget> [
        Row(
          children: <Widget> [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/Kaneki.jpg"),
              radius: MediaQuery.of(context).size.width/15,
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: AutoSizeText(
                  "Ken Kaneki",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  itemPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 2),
                  itemSize: 27,
                  minRating: 1,
                  initialRating: 3.5,
                  maxRating: 5,
                  allowHalfRating: true,
                  // updateOnDrag: true,
                  ignoreGestures: true,
                  onRatingUpdate:
                      (rating) => setState(() {
                    this.rating = rating;
                  }),
                  itemBuilder: (BuildContext context, int index) =>
                      Icon(
                        Icons.star, color: Colors.amber,
                      ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15),
          child: AutoSizeText("Strong character. The suffering he went trough was realy remarkable and interesting.",
            style: TextStyle(
              fontSize: 17.0,
          ),
       ),
        ),
      ],
    );
  }
}






