import 'package:flutter/material.dart';
import 'package:flutterfirst/ShoeApp/screens/widgets/shoeView.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ShoeApp/model/shoeModel.dart';

class ShoeHome1 extends StatelessWidget {
  const ShoeHome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore",
        style: GoogleFonts.dekko(fontSize:30),),
      ),
      body: ListView.builder(
        itemCount: home.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: () => Navigator.pushNamed(
                  context,
                  'shoeDetails',
                  arguments: index
              ),
              child: ShoeView(
                imagepath: home[index].image,
                name: home[index].name,
                desc: "",
                price: 1,
              ),
            );
          }),
    );
  }
}
