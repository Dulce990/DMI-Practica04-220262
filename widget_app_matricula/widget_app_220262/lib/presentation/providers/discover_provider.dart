import 'package:flutter/material.dart';
import 'package:widget_app_220262/domain/entities/video_post.dart';
import 'package:widget_app_220262/infraestructure/models/local_video_model.dart';
import 'package:widget_app_220262/shared/data/localvideo_posts.dart';

class DiscoverProvider extends ChangeNotifier { // Nos permite cambiar el estado de la aplicacion
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider(){
    loadNextPage();
  } 
 
  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = localVideoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}