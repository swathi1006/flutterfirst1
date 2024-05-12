import 'package:flutter/material.dart';

class AlertDialogg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: ElevatedButton(
            onPressed: () => showAlert(context),
            child: Text("Show Alert")),
      ),
    );
  }
}

showAlert(BuildContext context){
 showDialog(
     context: context,
     builder: (context){
       return AlertDialog(
         icon: Icon(Icons.question_mark,color: Colors.red,),
         title: Text("Exit"),
         content: Text("Do you want to exit?"),
         actions: [
           TextButton(onPressed: (){
             Navigator.of(context).pop();
           }, child: Text("Yes")),

           TextButton(onPressed: (){
             Navigator.of(context).pop();
           }, child: Text("No")),
           TextButton(onPressed: (){
             Navigator.of(context).pop();
           }, child: Text("Cancel"))
         ],
       );
     }
 );
}