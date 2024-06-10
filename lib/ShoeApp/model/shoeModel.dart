import 'package:flutter/material.dart';

class Shoe{

  final String? name;
  final String? desc;
  final int? price;
  final String? image;
  final String? details;
  final String? size_fit;
  final String? comp_care;
  final List<Color> availableColors;
  final List<int> availableSizes;


  Shoe( {this.name, this.desc, this.price, this.image,this.details,this.size_fit,this.comp_care,required this.availableColors, required this.availableSizes,});
}
List<Shoe> home = [
Shoe(
    image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSsUF5Xmu9QpHTcf_ZEDEznlG_08cNNfdPG1DhKyfXCzMBKZil3",
    name: "Nike Air Max 90",
       desc: "Woman's shoes - Popular",
       price: 150,
  availableColors: [Colors.red, Colors.blue, Colors.green],
  availableSizes: [6, 7, 8, 9, 10],
    ),
  Shoe(
    image: "https://imagedelivery.net/2DfovxNet9Syc-4xYpcsGg/c7f9dbf0-56cf-4691-0401-c9947d9cd300/product",
    name: "Nike AF1 Shadow",
    desc: "Women's Shoes - Just in",
    price: 130,
    availableColors: [Colors.red, Colors.purple, Colors.yellow],
    availableSizes:  [6, 7, 8, 9,10],
  ),
  Shoe(
      image: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f1f272c7-7c79-4fab-9d11-cdf96b67e0cf/nikecourt-legacy-next-nature-shoes-rdTfqH.png",
      name: "Nike Court Legacy",
      desc: "Women's Shoes",
      price: 150,
    availableColors: [Colors.red, Colors.blue, Colors.green],
    availableSizes: [6, 7, 8, 9,10],
  ),
  Shoe(
      image: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a7a72b3b-d031-4f37-9b75-fdecf127918d/court-legacy-lift-shoes-Rwtb5P.png",
      name: "Nike Court Legacy\nNext",
      desc: "Women's Shoes",
      price: 100,
    availableColors: [Colors.red, Colors.purple, Colors.yellow],
    availableSizes: [ 6, 7, 8, 9,10],
  ),
  Shoe(
      image: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/560876e8-f9d7-4fb9-b5f2-4edffa42583d/air-max-90-ltr-older-shoes-9xnt2B.png",
      name: "Niike Air Max 90",
      desc: "Woman's shoes - Popular",
      price: 150,
    availableColors: [Colors.red, Colors.purple, Colors.yellow],
    availableSizes: [6, 7, 8, 9,10],
  ),
];
