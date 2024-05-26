import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/sqflite_login_reg/views/registration.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: Colors.purple[900],
        title: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("PUNCH",style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Punch . Earn . Repeat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.collections_bookmark_sharp,size: 60,),
            const SizedBox(height: 30,),
            const Text("Organize, find, and enjoy your \n loyalty cards in a more modern \n and dynamic way",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 80,),
            MaterialButton(
                child: const Text("SIGN UP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                color: Colors.black,
                minWidth: 300,
                height: 50,
                shape: const StadiumBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegSQFLite()));
                }),
            const SizedBox(height: 30,),
            MaterialButton(
                child: const Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                color: Colors.white,
                minWidth: 300,
                height: 50,
                shape: const StadiumBorder(side: BorderSide(color: Colors.black,width: 1.0)),
                onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
