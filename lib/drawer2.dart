import 'package:flutter/material.dart';

class Drawer2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("Drawer 2",
        style: TextStyle(color: Colors.white
        ),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.8),
        child: ListView(
          children:  [
              const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                //color: Colors.black.withOpacity(0.6)
              ),
                accountName: Text("Bongani Nkosi",
                ),
                accountEmail: Text("nkosilebongang95@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/b1.png"),
              ),

                          ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0),
              child: MaterialButton(onPressed: (){},
                //color: Colors.black54,
                minWidth: 100,
                shape:  StadiumBorder(
                  side: BorderSide(width: 2, color: Colors.white70),
                ),
                child: const Text("SIGN OUT",
                style: TextStyle(color: Colors.white),),),
            ),
            listItems(),
          ],
        ),
      ),
    );
  }

  Widget listItems(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          leading: Icon(Icons.edit,
          color: Colors.white,),
          title: Text("Add Labels",
          style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.star,
            color: Colors.white,),
          title: Text('Points Redemption',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.plus_one,
            color: Colors.white,),
          title: Text('Points',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.person,
            color: Colors.white,),
          title: Text('Profile',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.bar_chart,
            color: Colors.white,),
          title: Text('Dashboard',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.home,
            color: Colors.white,),
          title: Text('Home',
            style: TextStyle(color: Colors.white),),
        ),

        Divider(color: Colors.white,),
        SizedBox(height: 15,),
        Text("Communicate",
          style: TextStyle(color: Colors.white),),
        SizedBox(height: 25,),
        ListTile(
          leading: Icon(Icons.lock,
            color: Colors.white,),
          title: Text('Privacy Policy',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.phone,
            color: Colors.white,),
          title: Text('Contact Us',
            style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: Icon(Icons.memory,
            color: Colors.white,),
          title: Text('About App',
            style: TextStyle(color: Colors.white),),
        ),
      ],

    );
  }
}
