import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';
import '../Components/Widgets/positioned_button.dart';
import '../Components/Widgets/task_card.dart';
import '../DataBase/Db_connection.dart';
import '../Models/task.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(24),
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                             Expanded(
                              child: TextField(
                                onSubmitted:(value) async{

                                  if(value!="")
                                    {
                                      DatabaseConnection _dbConnection  = DatabaseConnection();
                                      Task newTask = Task(
                                          title:value,
                                      );

                                      await _dbConnection.insertTask(newTask);
                                      print("new task added");
                                    }
                                },
                                style: const TextStyle(fontWeight: FontWeight.bold, color: Kcolors.kPrimaryTextColors, fontSize: 25),
                                maxLength: 25,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Task Name",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Kcolors.kPrimaryTextColors,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(bottom: 12),
                        child:  TextField(
                          minLines: 1,
                          maxLines: 3,
                          maxLength: 115,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 24),
                            hintText: "Enter List Description",
                            hintStyle: TextStyle(
                                color: Kcolors.kPrimaryTextColors, fontSize: 16),
                          ),
                        ),
                      ),
                      TaskCard(
                        text: "Create your first task list",
                        isDone: true,
                      ),
                      TaskCard(text: "Create your first task ", isDone: false),
                      TaskCard(
                        text: "Complete your first task",
                        isDone: true,
                      ),
                      TaskCard(
                        text: "delete your first task",
                        isDone: false,
                      ),
                    ],
                  ),
                  PositionedButton(icon: Icons.close, onClick: (){},),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
