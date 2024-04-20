import 'package:flutter/material.dart';
import 'package:flutterfirst/model/productModel.dart';

class Countries extends StatelessWidget {

  var places = [
    Data(
      image: "https://images.ctfassets.net/bth3mlrehms2/4qKkGsewSMqgIzrhbg8jUc/5aeb326ae8b6f735f078fbc35833d3ec/joseph-barrientos-49318-unsplash.jpg?w=1466&h=977&fl=progressive&q=50&fm=jpg",
      name: "USA"
    ),
    Data(
      image: "https://cdn.kimkim.com/files/a/images/e9a3be34a1d0f9dcbae465eaf897bd8529114604/big-13d76067643a55e3739ba3775d9ffbf9.jpg",
      name: "England"
    ),
    Data(
      image: "https://pyt-blogs.imgix.net/2021/12/eiffel-tower-g838ff3743_1920.jpg?auto=format&ixlib=php-3.3.0",
      name: "France"
    ),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZxzOUhcQj1x8l8d3nk4nqJ0KlLjoCSpqbDA&s",
      name: "Russia"
    ),
    Data(
        image: "https://a.cdn-hotels.com/gdcs/production159/d204/01ae3fa0-c55c-11e8-9739-0242ac110006.jpg",
    name: "Canada"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
       appBar: AppBar(
         leading: const Icon(Icons.keyboard_backspace,
         color: Colors.white,),
         backgroundColor: Colors.blue.shade700,
         title: const Text("GridView()",
           style: TextStyle(fontSize: 25, color: Colors.white),),
       ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1),
             children: List.generate(places.length, (index) =>
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: Container(
                    // height: 100,
                    // width: 10,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage("${places[index].image!}"),
                           fit: BoxFit.cover),
                       borderRadius: BorderRadius.circular(10)
                     ),
                       alignment: Alignment.bottomLeft,
                     padding: EdgeInsets.only(left: 10),

                     child: Text("${places[index].name}",

                     style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                     color: Colors.white),),
                   ),
                 ))
      ),
    );
  }
}
