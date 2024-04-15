import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/productModel.dart';

class GridView5 extends StatelessWidget {
  var data = [
    Data(
        image:
            "https://rukminim2.flixcart.com/image/850/1000/l0igvww0/mobile/c/j/j/-original-imagca5hhzsgpycf.jpeg?q=90&crop=false",
        name: "iPhone 13 Pro",
        name2: "Mobile",
        mrp: 1299,
        doubledata: 999,
        offer: "20% off"),
    Data(
        image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWOwbRrOagXHFBIRagjQ3QwHkTXDtMgN5og&s",
        name: "iPhone SE",
        name2: "Mobile",
        mrp: 429,
        doubledata: 399,
        offer: "15% off"),
    Data(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA0bJMc8WYSf2yZSjWNTdJd0YEC0gSDBJrXw&s",
        name: "Apple Watch Eries 7",
        name2: "Watch",
        mrp: 399,
        doubledata: 199,
        offer: "20% off"),
    Data(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLJ4HWIjazsmJXv9AiQpTjzIWRoRE3-TUOIQ&s",
        name: "Apple Watch SE",
        name2: "Watch",
        mrp: 429,
        doubledata: 749,
        offer: "50% off")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Catalog App",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.teal.shade900,
      ),
      body: GridView.custom(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              childAspectRatio: 0.6),
          childrenDelegate:
              SliverChildBuilderDelegate(
                      childCount: data.length,
                      (context, index) => Card(
                    child: Column(
                      children: [
                       Expanded(
                           child: Image.network(data[index].image!,
                           fit: BoxFit.scaleDown,
                           )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].name!,
                              style: const TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold),
                            ),
                            Text(
                              data[index].name2!,
                              style: const TextStyle(fontSize: 15,color: Colors.black45)
                            ),
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$${data[index].mrp} ",
                                  style: TextStyle(color: Colors.grey,fontSize: 18)
                                ),
                                TextSpan(text: " \$${data[index].doubledata} ",
                                style: TextStyle(color: Colors.teal.shade900,fontSize: 18,
                                fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: " ${data[index].offer}",
                                style: TextStyle(color: Colors.red.shade900,fontSize: 18))
                              ]
                            )),
                            MaterialButton(
                              minWidth: 200,
                              color: Colors.teal.shade900,
                              height: 40,
                              shape: BeveledRectangleBorder(),
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text("Add to Cart",
                                    style:GoogleFonts.montserrat(
                                        fontSize:15,
                                        color:Colors.white
                                    ),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),





                  ))),
    );
  }
}
