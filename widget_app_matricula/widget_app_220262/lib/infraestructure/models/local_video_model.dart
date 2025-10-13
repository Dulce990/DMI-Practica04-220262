import 'package:widget_app_220262/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;
  final int comments;
  
  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.comments,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'No name',
        videoUrl: json['video_url'] ?? 'Not found url',
        comments: json['comments'] ?? 0,
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoURL: videoUrl, likes: likes, views: views, comments:comments);
}
