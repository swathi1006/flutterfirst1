import 'package:flutter/material.dart';

import 'package:flutterfirst/ShoeApp/model/shoeModel.dart';

class ShoeDetailProvider extends ChangeNotifier {

  late Shoe _selectedShoe;

  late Color _selectedColor = Colors.red;
  late int _selectedSize = 6;
  bool _detailsExpanded = false;
  bool _sizeFitExpanded = false;
  bool _compositionCareExpanded = false;

  Shoe? get selectedShoe => _selectedShoe;

  Color? get selectedColor => _selectedColor;
  int get selectedSize => _selectedSize;
  bool get detailsExpanded => _detailsExpanded;
  bool get sizeFitExpanded => _sizeFitExpanded;
  bool get compositionCareExpanded => _compositionCareExpanded;

  /*
  void selectShoe(Shoe shoe) {
    _selectedShoe = shoe;
    _selectedColor = shoe.availableColors.first; // Default to the first available color
    _selectedSize = shoe.availableSizes.first;
  }
  */

    void selectColor(Color color) {
    _selectedColor = color;
    notifyListeners();
  }

  void selectSize(int size) {
    _selectedSize = size;
    notifyListeners();
  }

  void toggleDetailsExpanded() {
    _detailsExpanded = !_detailsExpanded;
    notifyListeners();
  }

  void toggleSizeFitExpanded() {
    _sizeFitExpanded = !_sizeFitExpanded;
    notifyListeners();
  }

  void toggleCompositionCareExpanded() {
    _compositionCareExpanded = !_compositionCareExpanded;
    notifyListeners();
  }
}