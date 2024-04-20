import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeM extends StatefulWidget {

  @override
  State<HomeM> createState() => _HomeMState();
}

class _HomeMState extends State<HomeM> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
         appBar: AppBar(
           backgroundColor: Colors.black,
           title: Center(
             child: Text("Musify",
               style: TextStyle(
                 fontSize: 40,
                 color: Colors.pink.shade200,
                 fontWeight: FontWeight.bold
               ),),
           ),
         ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Suggested playlists",
           // textAlign: TextAlign.start,
           // textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 25,
                color: Colors.pink.shade200,
                fontWeight: FontWeight.bold
            ),
          ),
          CarouselSlider(items:[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/car.png")
                )
            ),
          ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    scale: 0.5,
                      image: AssetImage("assets/images/rock.png",)
                  )
              ),
            ),

            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/rock3.png",)
                  )
              ),
            ),

          ],
              options:
    CarouselOptions(
    height: 400,
    aspectRatio: 16/9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    // onPageChanged: callbackFunction,
    scrollDirection: Axis.horizontal,
    )
          ),
      Text("Recommended for you",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 25,
            color: Colors.pink.shade200,
            fontWeight: FontWeight.bold
        ),)
          
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: index,
          onTap: (tappedindex){
            setState(() {
              index = tappedindex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.white,),label: "Saved"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.white,),label: "More"),
          ]
      ),

    );
  }
}

