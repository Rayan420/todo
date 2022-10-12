import 'package:flutter/material.dart';
import 'package:todo/Components/Constants/constants.dart';

class TaskCard extends StatefulWidget {
   TaskCard({Key? key, required this.text, required this.isDone}) : super(key: key);

  final String? text;
  bool isDone;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed:(){
              setState(() {
                if(widget.isDone)
                {
                  widget.isDone=false;
                }
                else
                  widget.isDone=true;

              });
            },
            icon:  widget.isDone?Icon(
              Icons.check_box_outlined,
              color: Colors.green,
              size: 30,
            ):Icon(
              Icons.check_box_outline_blank,
              size: 30,
            ),
          ),
          Text(
            widget.text?? "Unnamed task",
            style: TextStyle(
              color: widget.isDone? Kcolors.kPrimaryDoneTaskColors:Kcolors.kPrimaryTextColors,
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: null,
            icon:Icon(
              Icons.delete_forever_sharp,
              color: Kcolors.kButtonColor,
              size: 30,
            )
          ),
        ],
      ),
    );
  }
}
