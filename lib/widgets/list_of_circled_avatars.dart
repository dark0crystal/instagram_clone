import 'package:flutter/material.dart';
import 'package:instagram_clone/data/AvatarsData.dart';

class Listofcircledavatars extends StatelessWidget {
  const Listofcircledavatars({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // 🔥 Constrains the height properly
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Avatars.length,
        itemBuilder: (_, index) {
          final avatar = Avatars[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50, 
                  backgroundImage: AssetImage(avatar.image),
                ),
                const SizedBox(height: 8),
                Text(
                  avatar.userName,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
