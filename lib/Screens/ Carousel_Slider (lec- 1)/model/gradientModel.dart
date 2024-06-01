import 'dart:ui';

import 'package:flutter/material.dart';

class GradientModel{
  final Gradient gradient;
  final Color color;

  GradientModel({required this.gradient, required this.color});
}

List<GradientModel> gradientList = [
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff853824),
          Color(0xff0B0507),
          Color(0xff6D3224),
        ]),
    color: Color(0xff0B0507),
  ),

  GradientModel(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff123456),
        Color(0xff654321),
        Color(0xffabcdef),
      ],
    ),
    color: Color(0xff654321),
  ),
  GradientModel(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xffFF5733),
        Color(0xff33FF57),
        Color(0xff3357FF),
      ],
    ),
    color: Color(0xff33FF57),
  ),
  GradientModel(
    gradient: LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [
        Color(0xff9C27B0),
        Color(0xffE91E63),
        Color(0xffFF9800),
      ],
    ),
    color: Color(0xffE91E63),
  ),
  GradientModel(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff00BCD4),
        Color(0xff009688),
        Color(0xff8BC34A),
      ],
    ),
    color: Color(0xff009688),
  ),
];