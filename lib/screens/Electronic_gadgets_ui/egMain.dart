import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/controller/gadgetProvider.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/categories.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/egdetails.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/eghome.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/gadgetlist.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/splashpage.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyGadgets());
}

class MyGadgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( context) => GadgetProvider(),
      child: MaterialApp(
        //home: GadgetsSplash(),
        //home: GadgetsHome(),
        //home: Categories(),
        home: GadgetList(),
        routes: {
          'laptopDetails' : (context) => LaptopDetails()
        },
      ),
    );
  }
}
