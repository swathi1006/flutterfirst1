import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/Widgets/widget1.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/model/gadgetModel.dart';

class GadgetList extends StatelessWidget {

  late Laptop gadgetobj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context) => GadgetsHome()));
            },
            icon: const Icon(Icons.arrow_back,size: 30,weight: 3,)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Laptops",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Expanded(child: GridView.builder(
              itemCount: gadgetlist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2),
              itemBuilder: (context,index){
                return Widget1(
                  imagepath: gadgetlist[index].image,
                  name: gadgetlist[index].name,
                  price: gadgetlist[index].price
                );
              }))
        ],
      ),
    );
  }
}
