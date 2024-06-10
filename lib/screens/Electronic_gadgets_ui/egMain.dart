import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/categories.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/eghome.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/splashpage.dart';

void main(){
  runApp(MyGadgets());
}

class MyGadgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: GadgetsSplash(),
      //home: GadgetsHome(),
      home: Categories(),
    );
  }
}
