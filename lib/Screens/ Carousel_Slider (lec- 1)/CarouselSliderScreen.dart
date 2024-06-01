import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/model/image&text_Model.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/providers/carousal_provider.dart';
import 'package:provider/provider.dart';
import 'Components/Carousel.dart';
import 'model/gradientModel.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   centerTitle: true,
        //   title: const Text('Carousel Example'),
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: gradientList[Provider.of<CarousalProvider>(context).value].gradient),
          child: Column(
            children: [

              SizedBox(
                height: 10,
              ),
              Carousel(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ...List.generate(
                      imgTextList.length,
                      (index) => AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                        height: Provider.of<CarousalProvider>(context).value == index ? 15 : 10,
                        width: Provider.of<CarousalProvider>(context).value == index ? 15 : 10,

                      ),
                  ),

                ],
              )
            ],
          ),
        ));
  }
}
