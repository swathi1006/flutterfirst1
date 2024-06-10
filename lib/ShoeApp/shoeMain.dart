import 'package:flutter/material.dart';
import 'package:flutterfirst/ShoeApp/controller/shoeDetailsProvider.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeDetails.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeHome.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeshop.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyShoe());
}

class MyShoe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoeDetailProvider(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        home: ShoeShop(),
       // home: ShoeDetails(),

        /*
        home: ChangeNotifierProvider(
             create: (context) => ShoeDetailProvider(),
            //child: ShoeShop(),
           child: ShoeDetails(),
         ),
        */
        routes: {
          'shoeDetails':(context) => ShoeDetails(),
        },
      ),
    );
  }
}
