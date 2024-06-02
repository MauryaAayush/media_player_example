import 'package:flutter/material.dart';
import 'package:media_player_example/Screens/Parallax%20Effect%20(lec-1)/model/Video%20List.dart';

import 'components/videoCard.dart';

class ParallaxEffectScreen extends StatefulWidget {
  const ParallaxEffectScreen({super.key});

  @override
  State<ParallaxEffectScreen> createState() => _ParallaxEffectScreenState();
}

class _ParallaxEffectScreenState extends State<ParallaxEffectScreen> {
  late PageController _pageController;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
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
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView.builder(
              controller: _pageController,
              itemCount: videos.length,
              itemBuilder: (context, index) {
                // return Container(
                //   color: Colors.blue,
                //   child: Text('hello'),
                // );
                return VideoCard(
                  assetPath: videos[index],
                  isSelected:  _selectedIndex == index,
                );
              },
              onPageChanged: (i) => setState(() {
                _selectedIndex = i;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
