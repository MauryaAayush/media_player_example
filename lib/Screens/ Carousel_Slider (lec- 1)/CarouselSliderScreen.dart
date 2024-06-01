import 'package:flutter/material.dart';
import 'Components/Carousel.dart';


class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carousel Example'),
      ),
      body: const Carousel(),
    );
  }
}


