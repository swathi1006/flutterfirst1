import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XYZTile extends StatelessWidget {

  final String? image;
  final String? title;
  final String? date;
  final String? name;

  XYZTile({this.image, this.title, this.date, this.name,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: [BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        ),]
        ),
          child: Column(
            children: [
              Image.asset(
                image!,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(height: 12,),
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 14,),
              Text(date!,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54
                ),),
              Text(name!,
                style: TextStyle(color: Colors.black54,fontSize: 15),
              ),
              SizedBox(height: 20,)
            ],
          ),
      ),
    );
  }
}
