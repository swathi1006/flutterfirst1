import 'package:flutter/material.dart';

class RegSQFLite extends StatelessWidget {
  const RegSQFLite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        automaticallyImplyLeading: false,
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
                  SizedBox(width: 90,),
                  Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
                ],),
              const SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),),
                  hintText: "Full Name"
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),),
                    hintText: "Phone Number"
                ),
              ),
              const SizedBox(height: 20,),
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
                  child: const Text("CREATE ACCOUNT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                  color: Colors.black,
                  minWidth: 300,
                  height: 50,
                  shape: const StadiumBorder(),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegSQFLite()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
