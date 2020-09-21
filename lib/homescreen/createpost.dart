import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  CreatePost({this.content});

  final content;
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0, bottom: 12.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            child: new Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  image: new NetworkImage("https://avatars2.githubusercontent.com/u/29281776?s=400&v=4"),
                ),
              ),
            ),
          ),
          new Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              padding: EdgeInsets.only(
                  left: 16.0, top: 12.0, right: 16.0, bottom: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: new Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Write something here...",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: null,
                  child: Container(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
