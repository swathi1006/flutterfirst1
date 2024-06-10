import 'package:flutter/material.dart';

class Laptop{

  final String? image;
  final String? name;
  final int? price;
  final List<Color> color;
  final List<String> capacity;

  Laptop({this.image,this.name,this.price,required this.color,required this.capacity});
}

List<Laptop> gadgetlist = [

  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ONg56ybOua85cp_P68qNP2f09RtypKKpVA&s",
    name: "Surface Laptop 3",
    price: 999,
    color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
    capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVSvsuTFnv_sRuFa-bbHpsw3IGwUYszMtCqg&s",
    name: "XPS laptop 13",
    price: 839,
      color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
      capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5OsDu3s_gYJTJ4mEKdnC82XClsZf8xacsQ&s",
    name: "LG Gram 17",
    price: 1399,
      color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
      capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rPDbqKlKoOJ8ln_-4fffHVx114cYUrjjRw&s",
    name: "Macbook pro 13",
    price: 1299,
      color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
      capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzT1wDu5G3rJ5ebVsnkBGllWTyrieIuznlXQ&s",
    name: "Lenovo",
    price: 1456,
      color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
      capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
  Laptop(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh83Gp4iDcdmkAOAmna1bMzYrxfaMTUsN-3g&s",
    name: "HP notebook",
    price: 1186,
      color: [Colors.black54,Colors.white,Colors.black,Colors.pink.shade100],
      capacity: ["128 gb","256 gb","512 gb","1 tb"]
  ),
];