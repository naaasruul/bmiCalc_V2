import 'package:flutter/material.dart';
import 'package:bmicalcv2/constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton({
    required this.onTap, required this.buttonTitle

  });
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        child: Center(child: Text(buttonTitle,style: kLabelTextStyle,)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
