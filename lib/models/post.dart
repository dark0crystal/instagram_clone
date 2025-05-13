

class Post {
  int id;
  String userName;
  String description;
  String image ;
  int likes;
  int shares;
  int comments;


  Post({
    required this.id,
    required this.userName,
    required this.description,
    required this.image,
    required this.likes,
    required this.shares,
    required this.comments
  });
}