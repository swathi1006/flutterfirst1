import 'package:flutter/material.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeHome.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeshop.dart';
import 'package:flutterfirst/drawer2.dart';
import 'package:flutterfirst/drawerr.dart';
import 'package:flutterfirst/screens/Gridviewww/countries.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview1.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview2.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview3.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview4.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview5.dart';
import 'package:flutterfirst/screens/Gridviewww/stagGrid2.dart';
import 'package:flutterfirst/screens/Gridviewww/stagGrid3.dart';
import 'package:flutterfirst/screens/Gridviewww/staggered_gridview.dart';
import 'package:flutterfirst/screens/ListViewww/atmcard.dart';
import 'package:flutterfirst/screens/ListViewww/listview4.dart';
import 'package:flutterfirst/screens/ListViewww/stackEx.dart';
import 'package:flutterfirst/screens/MusifyApp/home1.dart';
import 'package:flutterfirst/screens/bottomNavBar.dart';
import 'package:flutterfirst/screens/bottomsheet.dart';
import 'package:flutterfirst/screens/cslider.dart';
import 'package:flutterfirst/screens/home1.dart';
import 'package:flutterfirst/screens/slivers.dart';
import 'package:flutterfirst/screens/splashPage.dart';
import 'package:flutterfirst/screens/splash_page_with_background.dart';
import 'package:flutterfirst/screens/tabEx.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: SplashPage(),
      //  home: Splash_with_Images (),
      // home: HomePage1(),
       // home:RegistrationPage(),
      //home: ListView_custom(),
      //home: StackEx(),
    //  home: ATMCard(),
      //home: CustomScroll(),
     // home: GridView1(),
      //home: GridView2(),
    // home: GridView3(),
      //home: GridView4(),
      //home: GridView5(),
      //home: Countries(),
      //home: Stag_Grid_View(),
      //home: OilProduct(),
      //home: XYZReader(),
      //home: CSlider(),
      //home: BottomNavBar(),

     /*
      darkTheme: ThemeData(
          primaryColor: Colors.black54,
          brightness: Brightness.dark,
          // primarySwatch: Colors.black
         // useMaterial3: true
      ),

      */
      //home: HomeM(),
      //home: TabEx(),
      //home: ShoeHome(),
      //home: ShoeShop(),
      //home: DrawerEx(),
      //home: BottomSheett(),
      home: Drawer2(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree