import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../database/db.dart';
import '../utils/snackbar.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {

  List<Map<String,dynamic>> taskFromdb = [];

  @override
  void initState() {
   readTask();
    super.initState();
  }
  Future<void> readTask() async {
    final task = await SQLHelper.readNote();
    setState(() {
      // update the list
      taskFromdb = task;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Create your Notes",style: TextStyle(color: Colors.white),),
      ),
      floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green,
          onPressed: () => showSheet(null,context),
          child: const Icon(Icons.note_alt_outlined),
      ),

      body: taskFromdb.isEmpty ? const Center(child: CircularProgressIndicator(),)
          : Column(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("My Tasks",style: GoogleFonts.handlee(fontSize: 25,fontWeight:FontWeight.bold),),
            ),
        Expanded(child: ListView.builder(
          itemCount: taskFromdb.length,
            itemBuilder: (context,index) {
              final task = taskFromdb[index];
              return Card(
                child: ListTile(
                
                  title: Text(task['title'],
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  subtitle: Text(task['content']),
                 leading: const Icon(Icons.task_alt,color: Colors.green,),
                  trailing:  Row(
                    mainAxisSize: MainAxisSize.min,
                   // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            showSheet(task['id'], context);
                          },
                          icon: const Icon(Icons.edit,color: Colors.black45,)),
                      IconButton(
                          onPressed: () {
                            deleteNote(task['id']);
                          },
                          icon: const Icon(Icons.delete,color: Colors.black45,))
                  ],),
                ),
              );
            }))
      ],),
    );
  }
  /// this file should be created in widget folder
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  showSheet(int? id, BuildContext context) {

    if(id != null){
      final existingTask = taskFromdb.firstWhere((element) => element['id'] == id);

      titleController.text = existingTask['title'];
      contentController.text = existingTask['content'];
    }

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
                        "Create Note" : "Update Note",
                      style: TextStyle(color: Colors.white),
                    ),)
              ],
            ),
          );
        }
    );
  }

  Future<void> updateNote(int id, String utitle,String ucontent) async {
    await SQLHelper.update(id,utitle,ucontent);
    readTask();
  }

  void createNote(context) async{
    String title = titleController.text;
    String content = contentController.text;
    int id = await SQLHelper.createNote(title,content);
    readTask();
    if(id != null){
      showSuccessSnackBar(context);
    }else{
      showErrorSnackBar(context);
    }
  }

 Future <void> deleteNote(int id) async {
    await SQLHelper.delete(id);
    readTask();
 }

}
