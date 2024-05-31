import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'assets/image1.jpg',
      'assets/image2.jpg',
      'assets/image3.jpg',
      'assets/image4.jpg',
      'assets/image5.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carousel Example'),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: imgList.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

