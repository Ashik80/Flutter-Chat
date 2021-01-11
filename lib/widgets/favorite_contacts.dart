import 'package:flutter/material.dart';
import 'package:message_app/models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Favorite contacts",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}, iconSize: 30, color: Colors.blueGrey,)
            ],
          ),
        ),
        Container(
          height: 120,
          color: Colors.amber,
          child: ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int i) {
              
            },
          ),
        )
      ],
    );
  }
}
