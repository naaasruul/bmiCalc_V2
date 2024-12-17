import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseablecard.dart';
import 'iconcontent.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1D1B30);
const inactiveCardColor = Color(0xff111336);
const bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        setState(() {
          maleCardColor = activeCardColor;
          femaleCardColor = inactiveCardColor;
        });
      } else {
        setState(() {
          maleCardColor = inactiveCardColor;
          femaleCardColor = activeCardColor;
        });
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        setState(() {
          femaleCardColor = activeCardColor;
          maleCardColor = inactiveCardColor;
        });
      } else {
        setState(() {
          femaleCardColor = inactiveCardColor;
          maleCardColor = activeCardColor;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(1);
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: genderCard(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(2);
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: genderCard(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: activeCardColor,
                    ),
                  ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
