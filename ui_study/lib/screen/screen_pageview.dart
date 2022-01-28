import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageViewState();
  }
}

class PageViewState extends StatefulWidget {
  const PageViewState({Key? key}) : super(key: key);

  @override
  _PageViewStateState createState() => _PageViewStateState();
}

class _PageViewStateState extends State<PageViewState> {
  TextStyle? style = const TextStyle(
      fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI / UX',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'This is Page1',
                style: style,
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'This is Page2',
                style: style,
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                'This is Page3',
                style: style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
