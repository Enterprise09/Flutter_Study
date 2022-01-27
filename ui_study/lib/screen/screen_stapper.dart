import 'package:flutter/material.dart';

class MyStepperScreen extends StatelessWidget {
  const MyStepperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MyStepperScreenState();
  }
}

class _MyStepperScreenState extends StatefulWidget {
  const _MyStepperScreenState({Key? key}) : super(key: key);

  @override
  _StepperScreenState createState() => _StepperScreenState();
}

class _StepperScreenState extends State<_MyStepperScreenState> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI / UX',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step1'),
              content: Text('Information of Step1'),
            ),
            Step(
              title: Text('Step2'),
              content: Text('Information of Step2'),
            ),
            Step(
              title: Text('Step3'),
              content: Text('Information of Step3'),
            ),
          ],
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
          currentStep: _currentStep,
        ),
      ),
    );
  }
}
