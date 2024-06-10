import 'package:flutter/material.dart';

class GadgetsSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/gadgets.png",),height: 110,width: 110,),
            Text("My Gadgets",style: TextStyle(color: Colors.white,fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
