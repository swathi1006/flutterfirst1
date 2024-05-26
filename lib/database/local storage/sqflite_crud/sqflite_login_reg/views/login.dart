import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/sqflite_login_reg/views/homesqf.dart';

class LoginSQFLite extends StatefulWidget {
  const LoginSQFLite({super.key});

  @override
  State<LoginSQFLite> createState() => _LoginSQFLiteState();
}

class _LoginSQFLiteState extends State<LoginSQFLite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: Colors.black,
        title: const Center(
          child: Column(
            children: [
              Text("PUNCH",style: TextStyle(fontSize: 55,fontWeight: FontWeight.bold,color: Colors.white),),
              Text("Punch . Earn . Repeat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const SizedBox(width: 90,),
                  const Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                ],),
              const SizedBox(height: 100,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),),
                    hintText: "Email id"
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),),
                    hintText: "Password"
                ),
              ),
              const SizedBox(height: 40,),
              MaterialButton(
                  child: const Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                  color: Colors.black,
                  minWidth: 300,
                  height: 50,
                  shape: const StadiumBorder(),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeSQFLIte()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
