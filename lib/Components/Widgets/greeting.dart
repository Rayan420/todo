import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key, required this.icon, required this.greeting})
      : super(key: key);

  final Icon icon;
  final Text greeting;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
       greeting,
        icon,
      ],
    );
  }
}
