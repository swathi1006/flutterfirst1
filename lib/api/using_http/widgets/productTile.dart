import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/productModel.dart';

class ProductTiles extends StatelessWidget {
  final Products product;
  ProductTiles(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CachedNetworkImage(imageUrl: product.image!,height: 200,width: 150,),
          SizedBox(height: 20,),
          Text(product.title!),
          Text("\$ ${product.price}")
        ],
      ),
    );
  }
}
