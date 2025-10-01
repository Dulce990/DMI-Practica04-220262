class VideoPost {
  final String caption; // titulo video
  final String videoURL; //Referencia al video corto

  final int likes;
  final int views;

  VideoPost({required this.caption, required this.videoURL, this.likes=0,this.views=0});
}
