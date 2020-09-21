import 'package:flutter/material.dart';
import 'createpost.dart';
import 'postcard.dart';

var postImages = {
  0: "https://avatars2.githubusercontent.com/u/29281776?s=400&v=4",
  1: "https://avatars2.githubusercontent.com/u/29281776?s=400&v=4",
  2: "https://avatars2.githubusercontent.com/u/29281776?s=400&v=4",
  3: "https://avatars2.githubusercontent.com/u/29281776?s=400&v=4",
  4: "https://avatars2.githubusercontent.com/u/29281776?s=400&v=4"
};
var postNames = {
  0: "Timothy Goh",
  1: "Timothy Goh",
  2: "Timothy Goh",
  3: "Fake TG",
  4: "Timothy Goh"
};
var postContents = {
  0: "Flutter is so amazing! I am loving it.",
  1: "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time.",
  2: "Flutter is so amazing! I am loving it.",
  3: "Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time.",
  4: "Flutter has blown my mind!"
};
var postTimes = {
  0: "10 mins ago · ",
  1: "20 mins ago · ",
  2: "1 hour ago · ",
  3: "1 hour ago · ",
  4: "2 hours ago · "
};
var postLikes = {
  0: "6",
  1: "16",
  2: "6",
  3: "16",
  4: "46"
};
var postComments = {0: "12", 1: "24", 2: "16", 3: "34", 4: "46"};
var postShares = {0: "1", 1: "2", 2: "3", 3: "2", 4: "2"};

class HomePost extends StatefulWidget {
  HomePost({Key key}) : super(key: key);

  @override
  _MyHomePostState createState() => new _MyHomePostState();
}

class _MyHomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          CreatePost(),
          FacebookPostCard(
              image: postImages[0],
              content: postContents[0],
              name: postNames[0],
              likes: postLikes[0],
              comments: postComments[0],
              shares: postShares[0],
              time: postTimes[0]),
          FacebookPostCard(
              image: postImages[1],
              content: postContents[1],
              name: postNames[1],
              likes: postLikes[1],
              comments: postComments[1],
              shares: postShares[1],
              time: postTimes[1]),
          FacebookPostCard(
              image: postImages[2],
              content: postContents[2],
              name: postNames[2],
              likes: postLikes[2],
              comments: postComments[2],
              shares: postShares[2],
              time: postTimes[2]),
          FacebookPostCard(
              image: postImages[3],
              content: postContents[3],
              name: postNames[3],
              likes: postLikes[3],
              comments: postComments[3],
              shares: postShares[3],
              time: postTimes[3]),
          FacebookPostCard(
              image: postImages[4],
              content: postContents[4],
              name: postNames[4],
              likes: postLikes[4],
              comments: postComments[4],
              shares: postShares[4],
              time: postTimes[4]),
        ],
      ),
    );
  }
}
