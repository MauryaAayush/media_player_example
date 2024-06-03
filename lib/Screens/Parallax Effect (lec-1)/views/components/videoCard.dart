import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({super.key, required this.assetPath,required this.isSelected});

  final String assetPath;
  final bool isSelected;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  final GlobalKey _videoKey = GlobalKey();
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..setVolume(0)
      ..initialize().then((_) {
        setState(() {});
        // _controller.play(); // Ensure the video starts playing only after initialization
      });
  }

  @override
  void didUpdateWidget(VideoCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_controller.value.isPlaying) {
      _controller.play(); // Ensure the video is always playing
    }else if(!_controller.value.isPlaying)
      {

      }

  }

  // @override
  // void initState() {
  //   super.initState();
  //   _initializeVideoPlayer();
  // }
  //
  // @override
  // void didUpdateWidget(VideoCard oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (widget.assetPath != oldWidget.assetPath) {
  //     _controller.dispose();
  //     _initializeVideoPlayer();
  //   } else if (widget.isSelected && !_controller.value.isPlaying) {
  //     _controller.play();
  //   } else if (!widget.isSelected && _controller.value.isPlaying) {
  //     _controller.play();
  //   }
  // }
  //
  // void _initializeVideoPlayer() {
  //   _controller = VideoPlayerController.asset(widget.assetPath)
  //     ..initialize().then((_) {
  //       if (mounted) {
  //         setState(() {});
  //       }
  //       if (widget.isSelected) {
  //         _controller.play();
  //       }
  //     });
  //   _controller.setLooping(true);
  // }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: widget.isSelected
          ?  const EdgeInsets.symmetric(vertical: 16, horizontal: 4)
          : const EdgeInsets.symmetric(vertical: 35, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 6),
                blurRadius: 8)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Flow(
          delegate: ParallaxFlowDelegate(
              scrollable: Scrollable.of(context),
              listItemContext: context, backgroundImageKey: _videoKey),
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller,key: _videoKey,)),
          ],
        ),
      ),
    );
  }
}


class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);


  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      height: constraints.maxHeight,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.topCenter(Offset.zero),
        ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
    (listItemOffset.dx / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment( scrollFraction * 2 - 1,0.0);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
    verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform:
      Transform.translate(offset: Offset(childRect.left,0.0)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

