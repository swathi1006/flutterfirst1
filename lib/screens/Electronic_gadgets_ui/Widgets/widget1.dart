import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/model/gadgetModel.dart';


class Widget1 extends StatelessWidget {

  final String? imagepath;
  final String? name;
  final String? desc;
  final int? price;

  Widget1({ this.price, this.imagepath, this.name, this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Container(
              //child: Image.network(imagepath!),
              height: 160,
              width: 190,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage(imagepath!,),
                      fit: BoxFit.fill
                  )
              ),
            ),
            //  SizedBox(),
            Text(name!,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            //Text(desc!),
            Text("\$${price}",
            )
          ],
        ),
      ),
    );
  }
}