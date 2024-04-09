import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterfirst/model/productModel.dart';
import 'package:flutterfirst/utils/mycolors.dart';
import 'package:flutterfirst/utils/textThemes.dart';

class ListView_separated extends StatelessWidget {

  var datas = [
    Data(name: "orange",doubledata: 80,image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsEAv6Eio5S08EuB3FlBDY5ujy4K5dS5NfZyb2zbuhNARjvsZbJyYkMyHCVSXj2FR0gi8&usqp=CAU"),
    Data(name: "Pineapple",doubledata: 60,image: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTzRDlpg1FNdyGLPUbBwx4-C8XVe6PI2OWP6P-HjfevHLt6-2WkF-QToj91SboSAlul03RQGw"),
    Data(name: "Pizza",doubledata: 110,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqNOrnCWng5zaBj2reNeU2QHAMaeyj1EJJhqbunN9kg&s" )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text("ListView 3"),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.add),
          ),
          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(child: Text("Settings")),
              const PopupMenuItem(child: Text("Privacy Policy"))
            ];
          })
        ],
        backgroundColor: MyColors.buttonColors,
      ),
      body: ListView.separated(
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image:NetworkImage("https://images.unsplash.com/photo-1704975986930-0c09f513c985?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
              borderRadius: BorderRadius.circular(60)

          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Image.network('${datas[index].image}',
              fit: BoxFit.cover,),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text(datas[index].name!,
            style: MyTextThemes.tHeading,),
            Text("Rs.${datas[index].doubledata}",
            style: MyTextThemes.bodyTextStyle,),
            const Icon(Icons.shopping_cart_outlined,
            size: 60,)
    ]),
          ],
        ),
        ),
      );
    },
    separatorBuilder: (context,index){
      if(index % 3 == 0){
      return Divider(thickness: 2,color: MyColors.buttonColors,);
    }else{
        return Container();
      }

      },
    itemCount: datas.length),

    );
  }
}
