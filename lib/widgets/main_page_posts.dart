import 'package:flutter/material.dart';
import 'package:instagram_clone/data/PostsData.dart';
import 'package:instagram_clone/screens/Profile.dart';

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
        final post = Posts[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              /// Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(post.image),
                        radius: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        post.userName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const Profile()));
                    },
                    child: const Text("Follow"),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              /// Image
              Image.asset(post.image),

              const SizedBox(height: 8),

              /// Action Icons Row
              Row(
                children: const [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 16),
                  Icon(Icons.mode_comment_outlined),
                  SizedBox(width: 16),
                  Icon(Icons.ios_share_sharp),
                ],
              ),

              const SizedBox(height: 8),

              /// Description
              Text(post.description),
            ],
          ),
        );
      },
    );
  }
}
