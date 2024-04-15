import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/productModel.dart';

class GridView5 extends StatelessWidget {

  var data = [
    Data(
      image: "https://rukminim2.flixcart.com/image/850/1000/l0igvww0/mobile/c/j/j/-original-imagca5hhzsgpycf.jpeg?q=90&crop=false",
      name :"iPhone 13 Pro",
      doubledata: 999
    ),
    Data(
      image: "data:image/jpeg;base64,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",
      name: "iPhone SE",
      doubledata: 399
    ),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA0bJMc8WYSf2yZSjWNTdJd0YEC0gSDBJrXw&s",
      name: "Apple Watch Eries 7",
      doubledata: 199
    ),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLJ4HWIjazsmJXv9AiQpTjzIWRoRE3-TUOIQ&s",
      name: "Apple Watch SE",
      doubledata: 749
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu,
        color: Colors.white,),
        title: const Text("Catalog App",
          style: TextStyle(fontSize: 25,
          color: Colors.white) ,),
          backgroundColor: Colors.green.shade900,
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(data[index].image!,),
                                fit: BoxFit.contain)
                              ),
                            ),
                            Text(
                              data[index].name!,
                            )
                          ],
                        ),
                    /*
                    MaterialButton(
                      minWidth: 200,
                      color: Colors.green,
                      height: 30,
                      shape: BeveledRectangleBorder(),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          Text("Add to Cart",
                          style:GoogleFonts.robotoMono(
                            fontSize:15,
                            color:Colors.white
                          ),)
                        ],
                      ),
                    )


                     */
                  ))),
    );
  }
}
