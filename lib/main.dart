import 'package:flutter/material.dart';

import 'Screens/ Carousel_Slider (lec- 1)/CarouselSliderScreen.dart';

void main() {
  runApp(const MyApp());
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

