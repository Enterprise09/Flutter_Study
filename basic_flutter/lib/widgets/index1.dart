import 'package:flutter/material.dart';

class MyIndex1 extends StatelessWidget {
  const MyIndex1({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    void _onPressed(){
    showDialog(context: context, builder: (context) => const AlertDialog(title: Text('Welcome Flutter'), content: Text('Hello from Enterprise09'),),);
  }
    return Column(children: <Widget>[
      const Text('Hello',),
      const Text('From ',),
      const Text('Enterprise09',),
      const Text('Click the button!',),
      ElevatedButton(onPressed: _onPressed, child: const Text('Click This'),),
    ],);
  }
}