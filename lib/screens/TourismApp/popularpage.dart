import 'package:flutter/material.dart';

import 'model1.dart';

class PopularPage extends StatelessWidget {

 var names = [
   "Germany",
   "France",
   "Italy",
   "India"
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       // title: Text("Popular"),
        backgroundColor: Colors.purple.shade900,
      ),
      body: Column(

        children:  [
          Text("Popular",
            style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                color: Colors.black),),
          Expanded(
              child: ListView.builder(
                  itemCount: places.length,
                  itemBuilder: (contex,index){
                return InkWell(

                  onTap: () => Navigator.pushNamed(
                      context,
                      'placeDetails',
                      arguments: index
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 8,right: 8),
                    child: Container(
                      height: 190,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("${places[index].image!}"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 130.0,left: 10),
                        child: Text(places[index].place!,
                          style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                              color: Colors.white),

                        ),
                      ),
                    ),
                  ),
                ) ;
              })
          ),

        ],

      )
    );
  }
}
