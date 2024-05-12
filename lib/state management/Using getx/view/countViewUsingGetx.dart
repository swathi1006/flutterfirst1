import 'package:flutter/material.dart';
import 'package:flutterfirst/state%20management/Using%20getx/controller/countController.dart';
import 'package:get/get.dart';


void main(){
  runApp(MaterialApp(
    home: Get_main(),
  ));
}

class Get_main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //get.put -> to make the controller class availiable in the entire widget tree
    final CountCntroller controller = Get.put(CountCntroller());

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Obx() - used to make the widget observable
            Obx(() => Text("Count : ${controller.count}")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      controller.increment();
                    },
                    child: Text("Increment")),
                ElevatedButton(
                    onPressed: (){
                      controller.decrement();
                    },
                    child: Text("Decrement")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
