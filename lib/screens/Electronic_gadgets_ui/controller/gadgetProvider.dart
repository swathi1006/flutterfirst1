import 'package:flutter/material.dart';

class GadgetProvider extends ChangeNotifier{

  late Color _selectedColor = Colors.black45;
  late String _selectedcapacity = "128 gb";

  Color? get selectedColor => _selectedColor;
  String? get selectedcapacity => _selectedcapacity;

  void selectColor(Color color){
    _selectedColor = color;
    notifyListeners();
  }

  void selectCapacity(String capacity){
    _selectedcapacity = capacity;
    notifyListeners();
  }
}