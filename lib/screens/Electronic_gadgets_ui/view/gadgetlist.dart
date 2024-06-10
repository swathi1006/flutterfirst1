import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/Widgets/widget1.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/model/gadgetModel.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/categories.dart';

class GadgetList extends StatelessWidget {

 // late Laptop gadgetobj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
            },
            icon: const Icon(Icons.arrow_back,size: 30,weight: 3,)),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Laptops",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Expanded(child: GridView.builder(
              itemCount: gadgetlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2),
              itemBuilder: (context,index){
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context,
                        'laptopDetails',
                        arguments: index
                    );},

                  child: Widget1(
                    imagepath: gadgetlist[index].image,
                    name: gadgetlist[index].name,
                    price: gadgetlist[index].price
                  ),
                );
              }))
        ],
      ),
    );
  }
}
