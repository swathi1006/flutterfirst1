import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model1.dart';

class PlaceDetails extends StatelessWidget {

  late Place countries;

  @override
  Widget build(BuildContext context) {

    final index = ModalRoute.of(context)?.settings.arguments as int;
    countries = places[index];

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.network(countries.image!,
            height: 250,
              width: 450,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(countries.place!,
                style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(countries.description!,
              textAlign: TextAlign.justify,),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text("Place to Visit ",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                    color: Colors.black), ),
            ),
            const SizedBox(height: 20,),
           CarouselSlider(items: [
             Container(
               width: 150,
               decoration:  BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                   image: const DecorationImage(
                       image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT_4_Aze2zGqr8R6eLn7Na5tkwnbhImCJsp6fTYbkKKGYaHkzt"),fit: BoxFit.cover
                   )
               ),
             ),
             Container(
               width: 150,
               decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: const DecorationImage(
                       image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQbimoTWsNI3PqLB6aozbE8eG5hd5jiQxYKWy6AO3NfhS7DD3iF"),fit: BoxFit.cover
                   )
               ),
             ),
             Container(
               width: 150,
               decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   image: const DecorationImage(
                       image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1zgm8k_cLBt9nYfihggIzY3umEaagQhk2MkvsyoZSx4coL2oX"),fit: BoxFit.cover
                   )
               ),
             ),
           ], options: CarouselOptions(
             height: 120,
             aspectRatio: 16/9,
             viewportFraction: 0.4,
             initialPage: 0,
             enableInfiniteScroll: true,
             reverse: false,
             autoPlay: false,
             autoPlayInterval: const Duration(seconds: 3),
             autoPlayAnimationDuration: const Duration(milliseconds: 800),
             autoPlayCurve: Curves.fastOutSlowIn,
             enlargeCenterPage: true,
             enlargeFactor: 0.3,
             // onPageChanged: callbackFunction,
             scrollDirection: Axis.horizontal,
           ),),
            const SizedBox(height: 20,),
            Center(
              child: MaterialButton(onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                minWidth: 360,
                height: 50,
                color: Colors.purple.shade900,
              child: const Text("Press to Explore",
              style: TextStyle(fontSize: 20, color: Colors.white),),),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
