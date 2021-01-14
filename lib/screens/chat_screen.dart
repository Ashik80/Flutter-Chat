import 'package:flutter/material.dart';
import 'package:message_app/models/message_model.dart';
import 'package:message_app/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget _buildMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: isMe
              ? EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 80,
                )
              : EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                message.text,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          iconSize: 30,
          color: Colors.black,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
