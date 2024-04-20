import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterfirst/screens/Gridviewww/product_widget.dart';
import 'package:flutterfirst/widget/widget1.dart';
import 'package:google_fonts/google_fonts.dart';

class XYZReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:  Center(
          child: Text(
            "xyzreader",
              style:  GoogleFonts.quicksand(
                fontSize:40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
          ),
        ),
        backgroundColor: Colors.teal.shade500,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: XYZTile(
                    image: "assets/images/sky.png",
                    title: "Mysteries of the Un..",
                    date: "20 Jun 2013",
                    name: "Carl Sagan",
                  )
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 3,
                  child: XYZTile(
                    image: "assets/images/tower.png",
                    title: "An Empire State of..",
                    date: "19 Jun 2013",
                    name: "Ernest Hemingway",
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: XYZTile(
                    image: "assets/images/cup.png",
                    title: "10 Tips for Hipster",
                    date: "10 May 2013",
                    name: "Vincent Van Gogh",
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: XYZTile(
                    image: "assets/images/mount.png",
                    title: "My Story of Climb..",
                    date: "10 May 2013",
                    name: "Vincent Van Gogh",
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: XYZTile(
                    image: "assets/images/dog.png",
                    title: "Dogs are loyal cre...",
                    date: "1 May 2013",
                    name: "dog",
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
