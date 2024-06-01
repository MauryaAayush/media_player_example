import 'package:flutter/material.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/model/image&text_Model.dart';
import 'package:media_player_example/Screens/%20Carousel_Slider%20(lec-%201)/providers/carousal_provider.dart';
import 'package:provider/provider.dart';
import 'Components/AppBar.dart';
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
          gradient: gradientList[Provider.of<CarousalProvider>(context).value]
              .gradient),
      child: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 10,
          ),
          const Carousel(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                imgTextList.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.all(2),
                  duration: const Duration(milliseconds: 100),
                  height: Provider.of<CarousalProvider>(context).value == index
                      ? 13
                      : 8,
                  width: Provider.of<CarousalProvider>(context).value == index
                      ? 13
                      : 8,
                  decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color:
                          Provider.of<CarousalProvider>(context).value == index
                              ? gradientList[index].color
                              : Colors.white.withOpacity(0.5)),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
