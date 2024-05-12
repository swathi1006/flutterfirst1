import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPageMedia extends StatelessWidget {

  bool? isLargeScreen;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    isLargeScreen = width > 600;
    return Scaffold(
      body:  isLargeScreen == true ? BigScreen() : SmallScreen(),
    );
  }
}

class SmallScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("SmallScreen"),
      ),
      body: Column(
        children: [
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 height: 50,
                 color: Colors.blue,
               ),
             ),
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,index){
                  return Container(
                    color: Colors.orangeAccent,
                    child: Text("Video $index"),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class BigScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("BigScreen"),

      ),
      body: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.orangeAccent,
                       height: 430,

                          ),
              )),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                            height: 100,
                    color: Colors.grey,
                    child: Text("Video ${index+1}"),
                  ),
                );
                }),
          )
        ],
      ),
    );
  }
}
