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
    return Container(
      child: Column(
        children: [
          Expanded(
            
            child:ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Posts.length,
              itemBuilder: (_, index){
                final posts = Posts[index];
                return Container(
                  padding :EdgeInsets.all(4),
                  margin: EdgeInsets.all(4),
                  child:Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextButton(onPressed: null, child: Text(posts.userName))
                          ],
                        ),
                        Column(
                          children: [

                          ],
                        )
                      ],
                  ),
                  ),
                );
                
              } ,
            )
            
          )
        ],
      ),
    );
  }
}