import 'package:flutter/material.dart';
import 'package:instagram_clone/data/AvatarsData.dart';

class Listofcircledavatars extends StatefulWidget {
  const Listofcircledavatars({super.key});

  @override
  State<Listofcircledavatars> createState() => _ListofcircledavatarsState();
}

class _ListofcircledavatarsState extends State<Listofcircledavatars> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child:Row(
        children:[
          Expanded(
          child:ListView.builder(
            scrollDirection:Axis.horizontal,
            itemCount: Avatars.length,
            itemBuilder: (_ , index) {
              final avatar = Avatars[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child:Column(
                  children:[
                   CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(avatar.image),
                   ),
                   Text(avatar.userName),
                  ],
                   
                ),
              );
            },

          ),
          ),
      ],
      ) 
    );
    
  }
}