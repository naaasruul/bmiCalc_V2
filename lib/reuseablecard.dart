import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  // something that change can make as property
  final Color? colour;
  final Widget? cardChild;

  // this is constructor
  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}
