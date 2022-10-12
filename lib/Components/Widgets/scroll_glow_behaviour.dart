import 'package:flutter/material.dart';

class NoScrollGlowBehaviour extends ScrollBehavior {
  Widget buildViewPortChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
