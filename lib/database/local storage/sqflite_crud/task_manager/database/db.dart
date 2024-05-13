import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> OpenOrCreateDb() async {
    return await sql.openDatabase(
      'notes',
      version: 1,
      onCreate: (database, version) async {
        await creatTable(database);
      }
    );
  }

  static Future<void> creatTable(sql.Database database) async {
    await database.execute(
      'CREATE TABLE My Notes (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT)'
    );
  }
}