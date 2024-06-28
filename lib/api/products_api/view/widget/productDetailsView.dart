import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {

  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
 // Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
 // List<Review>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
 // Meta? meta;
  String? images;
  String? thumbnail;


   ProductDetails({super.key,
  this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
   // this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    //this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    //this.meta,
    this.images,
    this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(images!,fit: BoxFit.cover,),
              SizedBox(height: 15,),
              Text(title!),
              SizedBox(height: 5,),
              Text(description!),
              SizedBox(height: 5,),
              Text("\$$price"),
            ],
          ),
        ),
      ),
    );
  }
}
