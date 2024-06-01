import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/providers/carousal_provider.dart';
import 'package:provider/provider.dart';

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
        child: CarouselSlider.builder(
          itemCount: imgTextList.length,
          itemBuilder: (context, index, realIndex) => Container(
            width: 500,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 7,
                    spreadRadius: 2)
              ],
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage(imgTextList[index].img), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      imgTextList[index].quote,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          imgTextList[index].writer,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          options: CarouselOptions(
            onPageChanged: (index, reason) =>
                Provider.of<CarousalProvider>(context, listen: false)
                    .updatevalue(index),
            height: 700,
            autoPlay: true,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.linear,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
      ),
    );
  }
}
