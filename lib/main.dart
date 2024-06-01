import 'package:flutter/material.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/providers/carousal_provider.dart';
import 'package:provider/provider.dart';

import 'Screens/ Carousel_Slider (lec- 1)/CarouselSliderScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CarousalProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const CarouselScreen(),
    );
  }
}
