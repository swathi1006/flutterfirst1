import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> openOrCreateDb() async {
    return await sql.openDatabase(
      'notes',
      version: 1,
      onCreate: (database, version) async {
        await creatTable(database);
      }
    );
  }
 // create table
  static Future<void> creatTable(sql.Database database) async {
    await database.execute(
      'CREATE TABLE MyNotes (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT)'
    );
  }

  static Future<int> createNote(String title, String content) async{
    final db = await SQLHelper.openOrCreateDb(); // to open db
    final data = {"title":title,"content":content};
    final id = await db.insert("MyNotes", data);
    return id;
  }

  // to read all data from db in the order of their id
  static Future<List<Map<String,dynamic>>> readNote() async {
    final db = await SQLHelper.openOrCreateDb();
    return db.query("MyNotes",orderBy:'id');
  }

  // to update values from a single id
  static Future<int> update(int id, String utitle, String ucontent) async {
    final db = await SQLHelper.openOrCreateDb();
    final udata = {'title':utitle,'content':ucontent};
    final uid = db.update('MyNotes', udata,where: 'id =?',whereArgs: [id]);
    return uid;
  }

  static Future<void> delete(id) async {
    final db = await SQLHelper.openOrCreateDb();
    db.delete('MyNotes',where: 'id =?',whereArgs: [id]);
  }
}