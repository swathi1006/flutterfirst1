import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview2.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview3.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview4.dart';
import 'package:flutterfirst/screens/Gridviewww/gridview5.dart';
import 'package:flutterfirst/screens/ListViewww/listview4.dart';

class TabEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
       appBar: AppBar(
         actions: [
           IconButton(onPressed: (){},
               icon: const Icon(Icons.camera_alt,
                 color: Colors.white,
               )),
           IconButton(onPressed: (){},
               icon: const Icon(Icons.search,
                 color: Colors.white,
               )),
           PopupMenuButton(
               iconColor: Colors.white,
               itemBuilder: (context){
             return [

               const PopupMenuItem(child: Text("Settings"),)
             ];
           }
           )
         ],
         title: const Text("WhatApp",
           style: TextStyle(fontSize: 25,
               color: Colors.white),),
         backgroundColor: Colors.teal.shade800,
         bottom: const TabBar(tabs: [
           Icon(Icons.people_alt_outlined,
           color: Colors.white,),
           Text("Chat",
           style: TextStyle(fontSize: 20,
           color: Colors.white),),
           Text("Status",
             style: TextStyle(fontSize: 20,
                 color: Colors.white),),
           Text("Call",
             style: TextStyle(fontSize: 20,
                 color: Colors.white),)
         ]),
       ),
       body: TabBarView(children: [

         GridView3(),
         ListView_custom(),
         GridView2(),
         GridView5()
       ]),
        ),
    );
  }
}
