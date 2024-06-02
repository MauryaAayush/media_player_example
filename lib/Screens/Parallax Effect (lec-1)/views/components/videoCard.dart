import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({super.key,required this.assetPath});

  final String assetPath;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;


  @override
  void initState()
  {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath);

    _controller
    ..addListener(() => setState(() { }))
    ..setLooping(true)
    ..setVolume(0)
    ..initialize().then((value) => setState(() {}))
    ..play();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 6),
                blurRadius: 8
            )
          ]
      ),
    );
  }
}