import 'package:flutter/material.dart';
import 'package:flutterfirst/ShoeApp/model/shoeModel.dart';
import 'package:flutterfirst/ShoeApp/screens/widgets/shoeView.dart';
import 'package:provider/provider.dart';

import '../../controller/shoeDetailsProvider.dart';

class ShoeShop extends StatelessWidget {

  late Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.search,size: 35,))
            ],
            toolbarHeight: 50,
            title: const Center(child: Text("All Shoes",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),)),
            bottom: const TabBar(tabs: [
              Text("All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              Text("Lifestyle",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              Text("Jordan",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              Text("Running",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),)
            ]),
          ),
       // backgroundColor: Colors.grey,
        body: GridView.builder(
          itemCount: home.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.6,
               // mainAxisSpacing: 6,
               // crossAxisSpacing: 6,
                crossAxisCount: 2),
            itemBuilder: (context,index){
              return InkWell(
                  onTap: () {
                 //   Provider.of<ShoeDetailProvider>(context, listen: false).selectShoe(shoe);
                    Navigator.pushNamed(
                    context,
                    'shoeDetails',
                    arguments: index
                  );},

                child: ShoeView(
                  imagepath: home[index].image,
                  name: home[index].name,
                  desc: home[index].desc,
                  price: home[index].price,

                ),
              );
            }),
          bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.saved_search_outlined),label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Bag"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
          ]),
      ),
    );
  }
}
