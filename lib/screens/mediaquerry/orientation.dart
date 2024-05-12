import 'package:flutter/material.dart';

class Orientation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

class ListScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portrait Screen"),
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return const Card(
              child: Row(
                children: [
                  Icon(Icons.radar_rounded,size: 20,),
                  Text("Data fo List items"),
                  Icon(Icons.delete,size: 20,)
                ],
              ),
            );
      },
      )
    );
  }
}

class GridScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landscape Screen"),
      ),
      body: GridView.count(
          crossAxisCount: 5,
       children: List.generate(
           30, 
               (index) => Card(
                 color: Colors.black,
                 child: Column(
                   children: [
                     Expanded(child: Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage("assets/images/cup.png"))
                       ),
                     )),
                     Text("Coffee Cup ")
                   ],
                 ),
               )),
      ),
    );
  }
}
