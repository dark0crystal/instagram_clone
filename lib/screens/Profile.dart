import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class Profile extends StatefulWidget {
  const Profile({super.key ,
  required this.post,
  });

  final Post post;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Text(widget.post.userName),
            ],)
          ],
        ),
      ),
    );
  }
}