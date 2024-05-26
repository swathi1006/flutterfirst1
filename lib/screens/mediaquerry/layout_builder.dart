/*

import 'package:flutter/material.dart';

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI"),
      ),
      body: ResponsiveLayouut(),
    );
  }
}

class ResponsiveLayouut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
      if (constraints.maxWidth > 600){
        WideLayout();
      }else{
        SmallLayout();
      }
    });
  }
}
*/
/*
class SmallLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex:3,
            child: Container(
              color: Colors.green,
              height: 200,
              child: Center(
                  child: Text("Column 1")),
            ))
      ],
    );
  }
}
*/