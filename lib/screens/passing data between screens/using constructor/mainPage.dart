import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/passing%20data%20between%20screens/using%20constructor/statefullScreen.dart';
import 'package:flutterfirst/screens/passing%20data%20between%20screens/using%20constructor/statelessScreen.dart';

class MainPage extends StatelessWidget {
  String name = "Cup";
  String image = "assets/images/cup.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            
          onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => StatelessScreen(name: name,image: image,)));
              },
              child: const Text("To stateless Screen")),
             const SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => StatefulScreen(name: name,image: image,)));
              },
              child: const Text("To steteful screen"))
        ],
      ),
    );
  }
}
