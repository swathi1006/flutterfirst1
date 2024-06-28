import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/api/products_api/view/widget/productDetailsView.dart';

class ProductTileAPI extends StatelessWidget {

  String? title;
  double? price;
  String? category;
  String? image;
  String? description;

 ProductTileAPI({super.key,
   this.description,
   this.title,
    this.price,
    this.category,
    this.image,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProductDetails(
          images: image,
          title: title,
          price: price,
          description: description,
        )));
      },
      child: Card(
        child: Container(
         // height: 250,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.network(image!,fit: BoxFit.cover,
                  height: 120,width: 120,)),
                SizedBox(height: 10,),
                Text(title!,),
                SizedBox(height: 5,),
                Text(category!),
                SizedBox(height: 5,),
                Text("\$$price"),
              ],
            ),
          )
        ),
      ),
    );
  }
}
