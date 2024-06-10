import 'package:flutter/material.dart';
import 'package:flutterfirst/api/using_http_2/controller/albumController.dart';
import 'package:flutterfirst/api/using_http_2/model/albumModel.dart';
import 'package:get/get.dart';

class AlbumHome extends StatelessWidget {

   final AlbumController albumController = Get.put(AlbumController());
   late final Albums album ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Albums"),
         backgroundColor: Colors.lightBlueAccent,
       ),
      body: SizedBox(
        child: Obx((){
          if(albumController.isLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return ListView.builder(
              itemCount: albumController.albumList.length,
                itemBuilder: (context,index){
                   return Card(
                     child: ListTile(
                       leading: CircleAvatar(
                            backgroundColor: Colors.pink[100],
                           child: Text(albumController.albumList[index].id!.toString())),
                       title: Text(albumController.albumList[index].userId!.toString()),
                       subtitle: Text(albumController.albumList[index].title!),
                     ),
                   );
                });
          }
        }),),
    );
  }
}
