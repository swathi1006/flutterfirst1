import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterfirst/screens/Gridviewww/product_widget.dart';

class OilProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: ProductTile(click: (){},
                color: Colors.grey,
                image: "assets/images/pineapple.png",
                title: "PineApple",
                desc: "PineApple is a super tasty fruit",
                price: 120,
              ),
          
          ),
        ]
        ),
      ),
    );
  }
}
