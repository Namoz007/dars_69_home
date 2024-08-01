import 'package:flutter/material.dart';

class RelevantScreen extends StatefulWidget {
  const RelevantScreen({super.key});

  @override
  State<RelevantScreen> createState() => _RelevantScreenState();
}

class _RelevantScreenState extends State<RelevantScreen> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Relevant Experience",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
          Stepper(
            currentStep: _currentStep,
            onStepTapped: (int step) {
              setState(() {
                _currentStep = step;
              });
            },
            steps: <Step>[
              Step(
                title: Text('Flutter Developer'),
                content: Column(
                  children: <Widget>[
                    InkWell(
                        onTap: (){
                          //url: https://github.com/Namoz007/dars_69_home.git
                        },
                        child: Text("I'm learned to Najot Ta'lim in 2023-2024 ")),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep == 0 ? StepState.editing : StepState.complete,
              ),
            ],
          )
        ],
      ),
    );
  }
}
