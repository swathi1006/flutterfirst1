import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/controller/gadgetProvider.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/model/gadgetModel.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/gadgetlist.dart';
import 'package:provider/provider.dart';

class LaptopDetails extends StatelessWidget {

  late Laptop laptopobj;

  @override
  Widget build(BuildContext context) {

    final gadgetProvider = Provider.of<GadgetProvider>(context);
    final index = ModalRoute.of(context)?.settings.arguments as int;
    laptopobj = gadgetlist[index];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GadgetList()));
            },
            icon: const Icon(Icons.arrow_back,size: 30,weight: 3,)),
      ),
      body: Column(

        children: [
          Text(laptopobj.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 30,),
          Image.network(laptopobj.image!,),
          SizedBox(height: 30,),
          Text('\$ ${laptopobj.price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 30,),
          Text("Colours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: laptopobj.color.map((color) {
              return GestureDetector(
                onTap: () {
                  gadgetProvider.selectColor(color);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: gadgetProvider.selectedColor == color
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
          Text("Capacity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: laptopobj.capacity.map((size) {
              return GestureDetector(
                onTap: () {
                  gadgetProvider.selectCapacity(size);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: gadgetProvider.selectedcapacity == size
                        ? Colors.grey[700]
                        : Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    size.toString(),
                    style: TextStyle(fontSize: 18,
                      color: gadgetProvider.selectedcapacity == size
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 40,),
          MaterialButton(
            onPressed: (){},
            color: Colors.blue[900],
            minWidth: 350,
            height: 60,
            child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
          )

        ],
      ),
    );
  }
}
