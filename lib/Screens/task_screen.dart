import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 6),
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
                        maxLength: 25,
                        decoration: InputDecoration(
                          hintText: "Enter Task List Name",
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
              const TextField(
                minLines: 1,
                maxLines: 3,
                maxLength: 115,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 24),
                  hintText: "Enter Task List Description",
                  hintStyle: TextStyle(
                      color: Kcolors.kPrimaryTextColors, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
