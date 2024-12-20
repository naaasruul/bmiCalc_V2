import 'package:bmicalcv2/screens/input_page.dart';
import 'package:bmicalcv2/components/reuseablecard.dart';
import 'package:flutter/material.dart';
import 'package:bmicalcv2/components/BottomButton.dart';
import 'package:bmicalcv2/components/RoundIcon.dart';
import 'package:bmicalcv2/constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                onPress: null,
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$resultText',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '$bmiResult',
                      style: kBMITextStyle,
                    ),
                    Text(
                      '$interpretation',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Recalculate')
        ],
      ),
    );
  }
}
