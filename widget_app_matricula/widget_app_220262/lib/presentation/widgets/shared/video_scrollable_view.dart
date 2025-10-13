import 'package:flutter/material.dart';
import 'package:widget_app_220262/domain/entities/video_post.dart';
import 'package:widget_app_220262/presentation/widgets/shared/video_butons.dart';
import 'package:widget_app_220262/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            // Video Player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoURL,
              )
            ),

            // Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            ),
            
          ],
        );

      },
    );
  }
}