import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(colour: Color(0xff1D1B30),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xff1D1B30),),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(colour: Color(0xff1D1B30)),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(0xff1D1B30)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xff1D1B30),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  // something that change can make as property
  final Color? colour;

  // this is constructor
  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colour,
      ),
    );
  }
}
