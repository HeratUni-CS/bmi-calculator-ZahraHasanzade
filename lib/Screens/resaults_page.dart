
import 'package:flutter/material.dart';

import '../Components/bottom_button.dart';
import '../Components/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;

 ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText!.toUpperCase(), style: kResultTextStyle,),
                    Text(bmiResult!, style: kBMItextStyle,),
                    Column(
                      children: [
                        Text('Normal BMI Range:', style: kGrayBodyTextStyle,),
                        Text('18.5 - 25 kg/m2', style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(interpretation!, style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          BottomButton(title: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
