import 'package:flutter/material.dart';
import 'package:bmicalcv2/constants.dart';

class genderCard extends StatelessWidget {
  final String genderText;
  final IconData genderIcon;

  genderCard({required this.genderText, required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(height: 8.0,),
        Text(
          '$genderText',
          style: kLabelTextStyle,
        ),
        SizedBox(height: 8.0,),
      ],
    );
  }
}
