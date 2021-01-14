import 'package:flutter/material.dart';
import 'package:message_app/models/message_model.dart';
import 'package:message_app/screens/chat_screen.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
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
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                  iconSize: 30,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10),
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          user: favorites[i],
                        ),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(favorites[i].imageUrl),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          favorites[i].name,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
