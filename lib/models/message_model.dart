import 'package:message_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

//Current user
final User currentUser =
    User(id: 0, name: "Current User", imageUrl: "assets/images/greg.jpg");

//Users
final User greg = User(id: 1, name: "Greg", imageUrl: "assets/images/greg.jpg");

final User james =
    User(id: 2, name: "James", imageUrl: "assets/images/james.jpg");

final User john = User(id: 3, name: "John", imageUrl: "assets/images/john.jpg");

final User olivia =
    User(id: 4, name: "Olivia", imageUrl: "assets/images/olivia.jpg");

final User sam = User(id: 5, name: "Sam", imageUrl: "assets/images/sam.jpg");

final User sophia =
    User(id: 6, name: "Sophia", imageUrl: "assets/images/sophia.jpg");
final User steven =
    User(id: 7, name: "Steven", imageUrl: "assets/images/steven.jpg");

//Favorite contacts
List<User> favorites = [sam, steven, olivia, john, greg];

//Chats on home screen
List<Message> messages = [
  Message(
    sender: james,
    time: "5:30 PM",
    text: "Tore maira ami ghumamu! Amar ghum hoy na",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: currentUser,
    time: "4:30 PM",
    text: "Tor may ghumay",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: james,
    time: "3:45 PM",
    text: "Tui ay! Ricksha vara lagle ami dimu",
    isLiked: true,
    unread: true
  ),
  Message(
    sender: james,
    time: "3:15 PM",
    text: "Aitasi aitasi ami 5 minute er moddhe aitasi!",
    isLiked: false,
    unread: true
  ),
  Message(
    sender: currentUser,
    time: "2:30 PM",
    text: "Amar ato vallage kan?",
    isLiked: true,
    unread: true
  ),
  Message(
    sender: james,
    time: "2:00 PM",
    text: "Amar rokto gorom",
    isLiked: false,
    unread: true
  ),
];
