import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview3.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview4.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview5.dart';
import 'package:flutterfirst/screens/ListViewww/atmcard.dart';
import 'package:flutterfirst/screens/ListViewww/stackEx.dart';

import 'Gridviewww/staggered_gridview.dart';

class BottomNavBar extends StatefulWidget {



  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  List<Widget> screens = [
    ATMCard(),
    GridView3(),
    GridView5(),
    Stag_Grid_View()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Bottom nav Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          currentIndex: index,
          onTap: (tappedindex){
            setState(() {
              index = tappedindex;
            });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
      ]
      ),
      body: screens[index],
    );
  }
}
