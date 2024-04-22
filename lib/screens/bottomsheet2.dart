import 'package:flutter/material.dart';

class BottomSheet2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Flutter bottom sheets",
          style: TextStyle(color: Colors.white),
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.blue[600],
      ),
      body: GestureDetector(
        onLongPress: ()=>showSheet(context),
        child: Center(
          heightFactor: 2,
          child: Column(
            children: [
              SizedBox(height: 30,),
              MaterialButton(onPressed: (){},
              height: 50,
                minWidth: 70,
                color: Colors.blue,
                child: const Text("Select the Category",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 30,),
              MaterialButton(onPressed: (){},
                height: 40,
                minWidth: 70,
                color: Colors.blue,
                child: const Text("Help",
                    style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  showSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context){
          return GridView.count(crossAxisCount: 3,
          children:  [
            GridTile(
                footer:const Center(
                    child: Text("Shopping",
               style: TextStyle(fontSize: 18),)), child:
            Icon(Icons.folder,
              color: Colors.blueGrey[300],
              size: 90,)

            ),
            GridTile(
                footer:  const Center(child: Text("Education",
               style: TextStyle(fontSize: 18),
               )),
                child: Icon(Icons.folder,
                color: Colors.purple[200],
                  size: 90,
                )
            ),
            GridTile(
                footer: const Center(child: Text("Personal",
                  style: TextStyle(fontSize: 18),)),
                child:Icon(Icons.folder,
                  color: Colors.blue[700],
                  size: 90,)
            ),
            const GridTile(
                footer:  Center(child: Text("Office",
                 style: TextStyle(fontSize: 18),)),
                child:Icon(Icons.folder,
                  color: Colors.redAccent,
                  size: 90,)
           ),
            GridTile(
                footer:  const Center(child: Text("Part Time",
                 style: TextStyle(fontSize: 18),)),
                child:Icon(Icons.folder,
                  color: Colors.yellow[800],
                  size: 90,)
            ),
            GridTile(
                footer:  const Center(child: Text("Other",
                 style: TextStyle(fontSize: 18),)),
                child:Icon(Icons.folder,
                  color: Colors.grey[700],
                  size: 90,)
            ),
            const GridTile(
                footer:  Center(child: Text("New",
                 style: TextStyle(fontSize: 18),)),
                child:Icon(Icons.create_new_folder,
                  color: Colors.deepOrange,
                  size: 90,)
            ),

          ],);
        });
  }
}
