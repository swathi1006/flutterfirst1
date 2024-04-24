import 'package:flutter/material.dart';

import '../ShoeApp/model/shoeModel.dart';

class ShoeDetails extends StatelessWidget {
  
  
  late Shoe shoe;

  @override
  Widget build(BuildContext context) {
    /// fetching the arguments passed from previous screen
    final index = ModalRoute.of(context)?.settings.arguments as int;
    
    shoe = home[index];
    
    return Scaffold(
      appBar: AppBar(
        title: Text("${shoe.name} Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(shoe.image! ),
          Text(shoe.name! ,),
          Text(shoe.desc?? "")
        ],
      ),
    );
  }
}
