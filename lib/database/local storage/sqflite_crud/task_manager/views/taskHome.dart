import 'package:flutter/material.dart';

import '../database/createEditSheet.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create your Notes"),
      ),
      floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green,
          onPressed: () => showSheet(null,context),
          child: Icon(Icons.note_alt_outlined),
      ),
      body: Center(
        child: Text("TO DO!"),
      ),
    );
  }


}
