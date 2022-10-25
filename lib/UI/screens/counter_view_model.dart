import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/constants/color.dart';
// import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier {
  int i = 0;
//int get i =>_i;
  var backgroundColor = 0;
  var currentBgColor=0;
 

  void increment() {
    if (i < 10) {
      i += 1;
      if (i == 10) {
        setRandomColor();
      }
    } else if (i >= 10 && i < 100) {
      i += 10;
      if (i == 100) {
        setRandomColor();
      }
    } else if (i >= 100 && i < 1000) {
      i += 100;
      if (i == 1000) {
        setRandomColor();
      }
    } else if (i >= 1000 && i < 5000) {
      i += 1000;
      if (i == 5000) {
        setRandomColor();
      }
    }
    notifyListeners();
  }

  void setRandomColor() {
    backgroundColor = Random().nextInt(colors.length);
    if(currentBgColor==backgroundColor){
      backgroundColor=Random().nextInt(colors.length);
    }
    else{
    currentBgColor=backgroundColor;
    
    
  }
  }
}
