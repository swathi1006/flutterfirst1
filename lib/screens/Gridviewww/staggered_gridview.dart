import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stag_Grid_View extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered GridView"),
      ),
     body: StaggeredGrid.count(crossAxisCount: 4,
     crossAxisSpacing: 10,
         mainAxisSpacing: 10,
     children: const [
       StaggeredGridTile.count(crossAxisCellCount: 2,
           mainAxisCellCount: 2,
           child: Card(
             color: Colors.tealAccent,
               child: Center(
                   child: Icon(
                     Icons.star,size: 45,)
               )
           )),
       StaggeredGridTile.count(crossAxisCellCount: 2,
           mainAxisCellCount: 3,
           child: Card(
             color: Colors.yellow,
               child: Center(
                   child: Icon(
                     Icons.home,size: 45,),
               )
           )),
       StaggeredGridTile.count(crossAxisCellCount: 2,
           mainAxisCellCount: 2,
           child: Card(
             color: Colors.purpleAccent,
               child: Center(
                   child: Icon(
                     Icons.headset_mic,size: 45,)
               )
           )),
       StaggeredGridTile.count(crossAxisCellCount: 2,
           mainAxisCellCount: 3,
           child: Card(
               color: Colors.redAccent,
               child: Center(
                   child: Icon(
                     Icons.mail,size: 35,)
               )
           )),
       StaggeredGridTile.count(crossAxisCellCount: 2,
           mainAxisCellCount: 3,
           child: Card(
               color: Colors.green,
               child: Center(
                   child: Icon(
                     Icons.favorite,size: 35,)
               )
           )),
     ],),
    );
  }
}
