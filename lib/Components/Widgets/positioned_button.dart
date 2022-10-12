import 'package:flutter/material.dart';
import '../Constants/constants.dart';

class PositionedButton extends StatelessWidget {
  const PositionedButton({
    Key? key,required this.icon, required this.onClick
  }) : super(key: key);

  final VoidCallback onClick;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      child: FloatingActionButton(
        onPressed: onClick,
        backgroundColor: Kcolors.kButtonColor,
        child: Icon(
          icon,
          color: Kcolors.kPrimaryTextColors,
        ),
      ),
    );
  }
}
