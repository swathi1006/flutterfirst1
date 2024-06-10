import 'package:flutter/material.dart';
import 'package:flutterfirst/ShoeApp/model/shoeModel.dart';
import 'package:flutterfirst/ShoeApp/screens/views/shoeshop.dart';
import 'package:provider/provider.dart';
import '../../controller/shoeDetailsProvider.dart';

class ShoeDetails extends StatelessWidget {

  late Shoe shoeobj;
  //final List<Color> colors = [Colors.red, Colors.blue, Colors.green];
  //final List<int> sizes = [6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {

    final shoeDetailProvider = Provider.of<ShoeDetailProvider>(context);
    final index = ModalRoute.of(context)?.settings.arguments as int;
   // final shoe = shoeDetailProvider.selectedShoe;
    shoeobj = home[index];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoeShop()));
            }, 
            icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: (){}, 
                icon: Icon(Icons.shopping_bag_outlined))
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(shoeobj.image!,fit: BoxFit.fitWidth,width: 600,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(shoeobj.name!,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("\$ ${shoeobj.price!}"),
                  SizedBox(height: 30,),

                  Row(
                    children: shoeobj.availableColors.map((color) {
                      return GestureDetector(
                        onTap: () {
                          shoeDetailProvider.selectColor(color);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: shoeDetailProvider.selectedColor == color
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: shoeobj.availableSizes.map((size) {
                      return GestureDetector(
                        onTap: () {
                          shoeDetailProvider.selectSize(size);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: shoeDetailProvider.selectedSize == size
                                ? Colors.grey[700]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            size.toString(),
                            style: TextStyle(fontSize: 18,
                              color: shoeDetailProvider.selectedSize == size
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  SizedBox(height: 30),
                  _buildExpandableSection(
                    "Details",
                    "This is the detailed description of the shoe.",
                    shoeDetailProvider.detailsExpanded,
                    shoeDetailProvider.toggleDetailsExpanded,
                  ),
                  _buildExpandableSection(
                    "Size and Fit",
                    "Information about the size and fit of the shoe.",
                    shoeDetailProvider.sizeFitExpanded,
                    shoeDetailProvider.toggleSizeFitExpanded,
                  ),
                  _buildExpandableSection(
                    "Composition and Care",
                    "Details on the composition and care instructions for the shoe.",
                    shoeDetailProvider.compositionCareExpanded,
                    shoeDetailProvider.toggleCompositionCareExpanded,
                  ),
                  SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        minWidth: 150,
                          onPressed: (){},
                          child: Text("Add to Bag"),
                      ),
                      SizedBox(width:10),
                      MaterialButton(
                        minWidth: 150,
                        onPressed: (){},
                        shape: StadiumBorder(),
                      color: Colors.black,
                      child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),

                 // Text("data")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableSection(String title, String content, bool isExpanded, VoidCallback onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
            ],
          ),
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(content),
          ),
        SizedBox(height: 16),
      ],
    );
  }


}
