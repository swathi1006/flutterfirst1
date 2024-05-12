import 'package:flutter/material.dart';
import 'package:flutterfirst/state%20management/using%20provider/controller/count_controller.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var counterController = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider Example"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pushed the butten this many times:"),
            SizedBox(height: 20,),
            Text("${counterController.counter.value}")
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
                onPressed: (){
                     counterController.decrementCounter();
                },
               child: Icon(Icons.minimize),
            ),
            FloatingActionButton(
              onPressed: (){
                counterController.incrementCounter();
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),

    );
  }
}
