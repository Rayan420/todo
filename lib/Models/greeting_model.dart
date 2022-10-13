import 'package:flutter/material.dart';

class GreetingModel
{

  var _now = DateTime.now();

  Icon getGreetingIcon()
  {
    if(_now.hour ==24 || _now.hour<12)
      {
        return const Icon(Icons.sunny, color: Colors.yellow, size: 40,);
      }
    else {
      return const Icon(Icons.nights_stay, color: Colors.deepPurple, size: 40,);
    }
  }
  Text getGreetingText()
  {
    if(_now.hour ==24 || _now.hour<12)
    {
      return const Text("Good Morning", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),);
    }
    else {
      return const Text("Good Evening", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),);
    }
  }

}