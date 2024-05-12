import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/animations/animation%20in%20navigation/main_animation.dart';

class Second_animation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body:
      Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context,animation1,animation){
                    return Main_Animation();
                  },
                  transitionsBuilder: (context,animation1,animation2,child){
                    return FadeTransition(
                      opacity: animation1,
                      child: child,);
                  }
              ));
        },
            child: Text("To Main Page")),
      ),
     // SizedBox(height: 20,),
    );
  }
}
