import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal Slider"),
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1552083375-1447ce886485?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2FsbHBhcGVyJTIwZGVza3RvcHxlbnwwfHwwfHx8MA%3D%3D"))
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://plus.unsplash.com/premium_photo-1691960547774-0c8aa64de409?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"))
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://media.istockphoto.com/id/1489566726/photo/leopard-in-sri-lanka.webp?b=1&s=170667a&w=0&k=20&c=GZvKUm0And7w1_6uLzXdkj217qCfDf4hdW0hADgUoe8="))
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://media.istockphoto.com/id/1625003316/photo/view-of-a-sunset-from-the-top-of-a-mountain.webp?b=1&s=170667a&w=0&k=20&c=rSu-20q_WctCKN8geV8aHvEJShuCHgnO2roVeO61Qkg="))
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1586812416094-a79ae86d22f5?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D"))
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1501854140801-50d01698950b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"))
                  ),
                ),
              ],
              options: CarouselOptions(
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
              ))
        ],
      ),
    );
  }
}
