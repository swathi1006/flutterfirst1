import 'package:flutter/material.dart';

class RegSQFLite extends StatelessWidget {
  const RegSQFLite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: Colors.black,
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
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
