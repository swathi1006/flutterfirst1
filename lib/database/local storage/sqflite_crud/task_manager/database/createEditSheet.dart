import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/task_manager/database/db.dart';
import 'package:flutterfirst/database/local%20storage/sqflite_crud/task_manager/utils/snackbar.dart';

/// this file should be created in widget folder
final titleController = TextEditingController();
final contentController = TextEditingController();

showSheet(int? id, BuildContext context) {


  showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
              top: 8.0,
              left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120
          ),
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 5,
                  controller: contentController,
                  decoration: const InputDecoration(
                    hintText: "Content",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              ElevatedButton(

                  onPressed: (){
                    if(id == null){
                      createNote(context);
                    }
                   if(id != null){
                     updateNote(id,titleController.text,contentController.text);
                   }
                    titleController.clear();
                    contentController.clear();
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Custom color
                  ),
                  child: Text(
                    id == null ?
                        "Create Note" : "Update Note"
                  ))
            ],
          ),
        );
      }
  );
}

Future<int> updateNote(int id, String utitle,String ucontent) async {
await SQLHelper.openOrCreateDb();

return id;
}

void createNote(context) async{
  String title = titleController.text;
  String content = contentController.text;
  int id = await SQLHelper.createNote(title,content);
  //readTask();
  if(id != null){
    showSuccessSnackBar(context);
  }else{
    showErrorSnackBar(context);
  }
}