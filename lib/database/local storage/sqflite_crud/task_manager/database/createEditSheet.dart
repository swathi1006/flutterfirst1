import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showSheet(int? id, BuildContext context) {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

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
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Title", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
                    hintText: "Content",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){},
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