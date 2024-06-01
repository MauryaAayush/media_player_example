import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'model/image&text_Model.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carousel Example'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imgTextList.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      )),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 600,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.linear,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          ),
        ),
      ),
    );
  }
}
