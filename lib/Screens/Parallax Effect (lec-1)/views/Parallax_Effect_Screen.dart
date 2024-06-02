import 'package:flutter/material.dart';

class ParallaxEffectScreen extends StatefulWidget {
  const ParallaxEffectScreen({super.key});

  @override
  State<ParallaxEffectScreen> createState() => _ParallaxEffectScreenState();
}

class _ParallaxEffectScreenState extends State<ParallaxEffectScreen> {
  late PageController _pageController;

  @override
  void initState()
  {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose()
  {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.7,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
              return VideoCard();
            },),
          ),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({super.key,required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}
