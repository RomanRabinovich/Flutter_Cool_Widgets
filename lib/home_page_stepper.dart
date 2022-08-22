import 'package:flutter/material.dart';

class HomePageStepper extends StatefulWidget {
  const HomePageStepper({Key? key}) : super(key: key);

  @override
  State<HomePageStepper> createState() => _HomePageStepperState();
}

class _HomePageStepperState extends State<HomePageStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Widget'),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('Info for step 1'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('Info for step 2'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('Info for step 3'),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
