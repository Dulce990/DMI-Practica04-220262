import 'package:flutter/material.dart';
import 'package:widget_app_220262/domain/entities/video_post.dart';
import 'package:widget_app_220262/presentation/widgets/shared/video_butons.dart';

class VideoScrollable extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollable({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context,index){
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            // video player + gradient


            // Botones 
            VideoButtons(video: videoPost)
          ],
        );
      },
    );
  }
}