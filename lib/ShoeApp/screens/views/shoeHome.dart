import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirst/ShoeApp/screens/widgets/shoeView.dart';

import '../../model/shoeModel.dart';

class ShoeHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.search,size: 35,))
          ],
          toolbarHeight: 50,
          title: const Center(child: Text("All Shoes",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),)),
          bottom: const TabBar(tabs: [
            Text("All",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            Text("Lifestyle",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            Text("Jordan",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            Text("Running",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
         // backgroundColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.saved_search_outlined),label: "Shop"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favourite"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Bag"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
            ]),

        body:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            CarouselSlider(
                items: [
                  Container(

                    decoration:  const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                  ),
                  Container(

                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://i.pinimg.com/474x/62/3b/97/623b975ab4681429d640c3f2e8a55720.jpg"))),
                  )
                ],

                options: CarouselOptions(
                    autoPlay: true,
                    height: 150,
                    viewportFraction: 1,
                    autoPlayCurve: Curves.linear
                ) ),

          ],
        )

      ),
    );
  }
}
