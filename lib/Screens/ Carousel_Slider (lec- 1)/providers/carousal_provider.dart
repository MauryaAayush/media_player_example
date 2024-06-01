import 'package:flutter/material.dart';

class CarousalProvider extends ChangeNotifier{
  int value = 0;

  void updatevalue(int index)
  {
    value = index;
    notifyListeners();
  }
}