import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/utils/textThemes.dart';

class ProductTile extends StatelessWidget {
  final Color? color;
  final String? image;
  final String? title;
  final String? desc;
  final int? price;
  final VoidCallback click;

  ProductTile({
    this.color,
    this.image,
    this.title,
    this.desc,
    this.price,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent.shade100,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image!,
              fit: BoxFit.contain,
              height: 130,
              width: 130,
            ),
            Text(
              title!,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
              ),
            ),
            Text(
              desc!,
              style: MyTextThemes.bodyTextStyle,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "\$${price}",
                  style: TextStyle(fontSize: 20),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                      onPressed: click,
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
