import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/animations/animation%20in%20navigation/second_screen_animation.dart';

class Main_Animation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
              PageRouteBuilder(
                  pageBuilder: (context,animation1,animation){
                    return Second_animation();
                  },
              transitionsBuilder: (context,animation1,animation2,child){
                    return FadeTransition(
                        opacity: animation1,
                    child: child,);
              }
              ));
            },
                child: Text("Second Page")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context,animation1,animation){
                        return Second_animation();
                      },
                      transitionsBuilder: (context,animation1,animation2,child){
                        return ScaleTransition(
                            scale: Tween(begin: 8.6, end: 1.8).animate(
                                CurvedAnimation(parent: animation1,
                                    curve: Curves.fastLinearToSlowEaseIn)),
                          child: child,
                        );
                      },
                    transitionDuration: Duration(seconds: 1),
                  ));
            },
                child: Text("Second Page")),
            SizedBox(height: 20,),

           
          ],
        ),

      ),
    );
  }
}
