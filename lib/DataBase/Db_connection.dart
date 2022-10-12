import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/DataBase/Db_abstraction.dart';

import '../Models/task.dart';
class DatabaseConnection extends DataBaseHelper
{
  @override
  Future<Database> database() async{
    return openDatabase(
        join(await getDatabasesPath(), 'db_todo.db'),
        onCreate: (db, version) {
          // Run the CREATE TABLE statement on the database.
          return db.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT)',
          );

        },
      version: 1,

    );


  }

  @override
  Future<void> insertTask(Task task) async {
   Database _db = await database();
   await _db.insert("tasks", task.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<void> deleteTask(Task task) {
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getTask() async{
    Database _db = await database();
    List<Map<String, dynamic>> taskMap = await _db.query('tasks');
    return List.generate(taskMap.length, (index){
      return Task(id: taskMap[index]['id'], title: taskMap[index]['title'], desc: taskMap[index]['description']);
    });
  }


}