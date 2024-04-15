import 'dart:math';

import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {

  final List<IconData> icons = [
    Icons.home,
    Icons.notification_important_rounded,
    Icons.camera_alt,
    Icons.stars_rounded,
    Icons.phone,
    Icons.mail,
    Icons.map_rounded,
    Icons.microwave,
    Icons.mic_off,
    Icons.file_open
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
         // mainAxisSpacing: 50,
          childAspectRatio: 2,
          children:List.generate(icons.length, (index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 10,
            //  width: 40,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3)
                  )],
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  borderRadius: BorderRadius.circular(10)),
              child:  Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(icons[index],size: 50,
                    color: Colors.black45,),
                  ),
                  Text(" Heart \n Shaker",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ))
      )
    );
  }
}
