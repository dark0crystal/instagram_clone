import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/list_of_circled_avatars.dart';
import 'package:instagram_clone/widgets/main_page_posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("instagram"),
        centerTitle: false,
      ),
      body: Column(
        children: [
       
          SizedBox(
            height: 130, 
            child: Listofcircledavatars(),
          ),
          
          Expanded(
            child: MainPagePosts(),
          ),
        ],
      ),
    );
  }
}
