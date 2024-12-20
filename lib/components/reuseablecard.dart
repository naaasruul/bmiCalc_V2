import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  // something that change can make as property
  final Color? colour;
  final Widget? cardChild;
  final void Function()? onPress;

  // this is constructor
  ReusableCard({ this.colour, this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}
