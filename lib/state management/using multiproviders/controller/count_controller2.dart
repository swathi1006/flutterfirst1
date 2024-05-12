import 'package:flutter/material.dart';
import 'package:flutterfirst/state%20management/using%20provider/model/count.dart';

class CounterProvider2 extends ChangeNotifier{

  final Count _intCount = Count(0);

  Count get counter => _intCount;

  void incrementCounter(){
    _intCount.value++;
    notifyListeners();
  }
  void decrementCounter(){
    _intCount.value--;
    notifyListeners();
  }

}