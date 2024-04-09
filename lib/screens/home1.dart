import 'package:flutter/material.dart';
import 'package:flutterfirst/utils/mycolors.dart';
import 'package:flutterfirst/utils/textThemes.dart';

class HomePage1 extends StatelessWidget {

  var users = [
    {
      'name': "Aby",
      'phone': 9876543381,
      'pic': "assets/images/b1.png",
      "time": "9.32 AM",
      "unread": 2
    },
    {
      'name': "Bibin",
      'phone': 9876598738,
      'pic': "assets/images/b2.png",
      "time": "10.10 AM",
      "unread": 3
    },
    {
      'name': "Cinta",
      'phone': 9876541181,
      'pic': "assets/images/g1.png",
      "time": "8.32 AM",
      "unread": null
    },
    {
      'name': "Diya",
      'phone': 9446543381,
      'pic': "assets/images/g2.png",
      "time": "8.02 AM",
      "unread": 5
    },
    {
      'name': "Yash",
      'phone': 98765433123,
      'pic': "assets/images/b3.png",
      "time": "7.55 AM",
      "unread": null
    },
    {
      'name': "Pinky",
      'phone': 8176543381,
      'pic': "assets/images/g3.png",
      "time": "7.44 AM",
      "unread": 1
    },
    {
      'name': "Meena",
      'phone': 7546543381,
      'pic': "assets/images/g4.png",
      "time": "7.32 AM",
      "unread": 2
    },
    {
      'name': "Sera",
      'phone': 9976543380,
      'pic': "assets/images/g1.png",
      "time": "7.32 AM",
      "unread": 2
    },
    {
      'name': "Vinay",
      'phone': 9876543322,
      'pic': "assets/images/b4.png",
      "time": "7.32 AM",
      "unread": 2
    },
    {
      'name': "Riyas",
      'phone': 9876543343,
      'pic': "assets/images/b2.png",
      "time": "7.32 AM",
      "unread": null
    },
    {
      'name': "Jeevan",
      'phone': 9876543381,
      'pic': "assets/images/g1.png",
      "time": "7.32 AM",
      "unread": 2
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts", style: MyTextThemes.tHeading,),
        centerTitle: true,
        backgroundColor: MyColors.basicColor,
      ),
      body: ListView(
        children: List.generate(
            users.length,
                (index) =>
                Card(
                  // color: Colors.lightGreenAccent,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: MyColors.iconColors,
                      backgroundImage: AssetImage("${users[index]["pic"]}"),

                    ),
                    trailing: _buildWidget(index),
                    title: Text("${users[index]['name']}"),
                    subtitle: Text("${users[index]['phone']}"),),
                )),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return Text("${users[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${users[index]['time']}"),
          CircleAvatar(
            minRadius: 6,
            maxRadius: 14,
            child: Text("${users[index]['unread']}"),
          )
        ],
      );
    }
  }
}
