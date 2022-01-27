import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatelessWidget {
  const ChoiceChipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChoiceChipState();
  }
}

class ChoiceChipState extends StatefulWidget {
  const ChoiceChipState({Key? key}) : super(key: key);

  @override
  _ChoiceChipStateState createState() => _ChoiceChipStateState();
}

class _ChoiceChipStateState extends State<ChoiceChipState> {
  bool _isSelected = false;

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
          child: ChoiceChip(
            // avatar: Image.asset('images/picture.png'),
            padding: const EdgeInsets.all(15),
            label: const Text(
              'Choice Chip',
              style: TextStyle(fontSize: 30),
            ),
            selected: _isSelected,
            onSelected: (bool newSelectedState) {
              setState(() {
                _isSelected = newSelectedState;
              });
            },
          ),
        ));
  }
}
