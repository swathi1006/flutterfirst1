import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeShared extends StatefulWidget {

  @override
  State<HomeShared> createState() => _HomeSharedState();
}

class _HomeSharedState extends State<HomeShared> {
  
  late SharedPreferences preferences;
  String? email;
  
  @override
  void initState() {
    
    fetchdata();
    super.initState();
  }
  
  void fetchdata() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString("username");
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text("Home!"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Home $email! "),
              ElevatedButton(onPressed: (){
                preferences.setBool("userLoggedIn", false);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginShared()));
              },
                  child: Text("LogOut"))
            ],
          )),
    );
  }
}
