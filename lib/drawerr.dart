import 'package:flutter/material.dart';

class DrawerEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple.shade900,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.3),
        child: ListView(
          children:   [
            const UserAccountsDrawerHeader(
              // margin: EdgeInsets.symmetric(horizontal: 8.0),
                accountName: Text("Swathi"),
                accountEmail: Text("swathi123@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/g1.png"),
                ) ,
              //otherAccountsPictures: [],
            ),
            listItems(),
          ],
        ),
      ),
    );
  }

  Widget listItems(){
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About'),
        ),
    ],

    );
  }

}
