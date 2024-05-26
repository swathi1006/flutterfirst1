import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebaseFunctions.dart';
import 'loginfire.dart';

class HomeFire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text("Welcome"),
        SizedBox(height: 50,),
        ElevatedButton(
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(Colors.pink),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),),
            onPressed: () {
              //await FirebaseAuth.instance.signOut();
              logoutUser();
            },
            child: Text("LogOut")),
        ],)
      ),
    );
  }
  void logoutUser() {
    FirebaseFunctions().logoutUser().then((value) =>
        Get.offAll(LoginFire()));
  }
}
