import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';
import '../Components/Widgets/positioned_button.dart';
import '../Components/Widgets/task_card.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
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
                            const Expanded(
                              child: TextField(
                                style: TextStyle(fontWeight: FontWeight.bold, color: Kcolors.kPrimaryTextColors, fontSize: 25),
                                maxLength: 25,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter List Name",
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: const TextField(
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
