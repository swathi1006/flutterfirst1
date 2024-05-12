import 'package:flutter/material.dart';

class AnimationEx extends StatefulWidget {

  @override
  State<AnimationEx> createState() => _AnimationExState();
}

class _AnimationExState extends State<AnimationEx> with SingleTickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    //animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animation = Tween<double>(begin: 0.0, end: 2 * 3.14).animate(animationController);
    //animationController.repeat();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  void startAnimation(){
    if(animationController.isDismissed){
      animationController.forward();
    }else{
      animationController.reverse();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: RotationTransition(turns: animation,
        child: IconButton(onPressed: (){
          if(animationController.isCompleted){
            animationController.reverse();
          }else{
            animationController.forward();
          }
        },
            icon: Icon(Icons.ac_unit,
            size: 50,)),),
       /*
        child: InkWell(
          onTap: () => startAnimation,
          child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 50,
              progress: animation),
        ),
        */
      ),
    );
  }
}
