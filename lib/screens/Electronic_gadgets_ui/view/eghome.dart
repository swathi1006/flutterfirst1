import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/model/homegrid.dart';
import 'package:flutterfirst/screens/Electronic_gadgets_ui/view/categories.dart';

class GadgetsHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 30,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,size: 30,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline,size: 30),label: ""),
          ]),

      body: Column(
        children: [
          Container(
            height: 130,
            width: 380,
            color: Colors.blue[900],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bose Home Speaker",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                    Text("USD",style: TextStyle(color: Colors.white),)
                  ],
                ),
                Image(image: AssetImage("assets/icons/speaker.png"),height: 80,)
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blueGrey[100],
                    child: IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                        },
                        icon: const Icon(Icons.format_list_bulleted,size: 30,)),
                  ),
                  const SizedBox(height: 10,),
                  Text("Categories",style: TextStyle(fontSize: 18,color: Colors.blue[800],fontWeight: FontWeight.bold),)
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blueGrey[100],
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.star_border_outlined,size: 30,)),
                  ),
                  const SizedBox(height: 10,),
                  Text("Favourites",style: TextStyle(fontSize: 18,color: Colors.blue[800],fontWeight: FontWeight.bold),)
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blueGrey[100],
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.card_giftcard,size: 30,)),
                  ),
                  const SizedBox(height: 10,),
                  Text("Gifts",style: TextStyle(fontSize: 18,color: Colors.blue[800],fontWeight: FontWeight.bold),)
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.blueGrey[100],
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.people_alt_outlined,size: 30,)),
                  ),
                  const SizedBox(height: 10,),
                  Text("Best Selling",style: TextStyle(fontSize: 18,color: Colors.blue[800],fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 15,),
          const Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          const SizedBox(height: 20,),
          Expanded(
            child: GridView.builder(
                itemCount: homegrid.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 // mainAxisSpacing: 1,
                 // crossAxisSpacing: 1,
                    crossAxisCount: 2,
                childAspectRatio: 0.7),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(image: NetworkImage(homegrid[index].image!),fit: BoxFit.scaleDown,),
                                Text(homegrid[index].name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                              ],
                            ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
