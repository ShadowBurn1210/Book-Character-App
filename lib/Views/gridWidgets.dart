import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:apartment_housting/Models/appConstants.dart';


class PostingGridTile extends StatefulWidget{


  PostingGridTile({super.key});


  @override
  _PostingGridTileState createState() => _PostingGridTileState();
}

class _PostingGridTileState extends State<PostingGridTile>{
  double rating = 2.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
          Image.asset(
              "assets/images/mikey1.jpeg",
              height: 350,
              width: 440
          ),
        AutoSizeText(
          "Anime name - Tokyo Revengers",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
        ),
        ),
        AutoSizeText(
          "Charater Name - Manjiro Sano (Mikey)",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
                  "Toman belongs to me. As long as I’ve its back, none of us are gonna lose",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
        RatingBar.builder(
          itemPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 2),
          itemSize: 17.0,
          minRating: 1,
          initialRating: 4,
          maxRating: 5,
          allowHalfRating: true,
          ignoreGestures: true,
          onRatingUpdate: (rating) => setState(() {
            this.rating = rating;
          }),
          itemBuilder: (BuildContext context, int index) =>
              Icon(
                Icons.star, color: Colors.amber,
              ),
        ),
      ],

    );
  }
  
}