import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoe"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,childAspectRatio:0.8 ),
      children: List.generate(10, 
              (index) => Card(
                child: Column(
                  children: [
                    Image.network("https://5.imimg.com/data5/ANDROID/Default/2021/5/QV/EK/VD/35945583/product-jpeg.jpg"),
                    Text("Puma"),
                    Text("\$ 1200")
                  ],
                ),
              )),),
    );
  }
}
