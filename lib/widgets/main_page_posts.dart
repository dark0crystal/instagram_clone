import 'package:flutter/material.dart';
import 'package:instagram_clone/data/PostsData.dart';

class MainPagePosts extends StatefulWidget {
  const MainPagePosts({super.key});

  @override
  State<MainPagePosts> createState() => _MainPagePostsState();
}

class _MainPagePostsState extends State<MainPagePosts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Posts.length,
      itemBuilder: (_, index) {
        final posts = Posts[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10 ,0,10,0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(posts.image),
                        radius: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(posts.userName),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Follow"),
                  ),
                ],
              ),
              ),
              const SizedBox(height: 8),
              Image.asset(posts.image),
              Row(children: [
                Text(posts.description)
              ],)
            ],
          ),
        );
      },
    );
  }
}
