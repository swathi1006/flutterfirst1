import 'package:flutter/material.dart';
import 'package:flutterfirst/flutter_cart_getx/view/screens/product_list_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main()=>  runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}
