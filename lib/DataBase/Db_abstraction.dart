import 'package:sqflite/sqflite.dart';

import '../Models/task.dart';

abstract class DataBaseHelper
{
  Future<Database> database();
  Future<void> insertTask(Task task);
  Future<void> getTask();
  Future<void> deleteTask(Task task);
}