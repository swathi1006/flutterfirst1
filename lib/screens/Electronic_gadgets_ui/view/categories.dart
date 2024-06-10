import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/eghome.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/gadgetlist.dart';

class Categories extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GadgetsHome()));
            },
            icon: const Icon(Icons.arrow_back,size: 30,weight: 3,)),
      ),
      body:  Column(

        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text("Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("All",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
             ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Computers",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Accessories",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Smartphones",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Smart Objects",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Speakers",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
          Card(elevation: 3,color: Colors.white,child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GadgetList()));
            },
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            title: Text("Laptops",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            ,),
        ],
      ),
    );
  }
}
