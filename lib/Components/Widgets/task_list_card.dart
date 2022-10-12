import 'package:flutter/material.dart';

class TaskListCard extends StatelessWidget {
   const TaskListCard(
      {Key? key, required this.color, required this.title, required this.desc})
      : super(key: key);

  final Color color;
  final String? title;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "Unnamed List",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                desc ?? "No Description",
                style: const TextStyle(
                  height: 1.5,
                  fontSize: 18,
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
