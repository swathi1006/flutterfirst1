import 'package:flutter/material.dart';
import 'package:flutterfirst/api/products_api/controller/allProductsController.dart';
import 'package:flutterfirst/api/products_api/controller/categoryController.dart';
import 'package:flutterfirst/api/products_api/view/category_screen.dart';
import 'package:flutterfirst/api/products_api/view/homeproductlist.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CategoryController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomeProductList(),
        home: CategoryScreen(),
      ),
    );
  }
}
