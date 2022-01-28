import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatelessWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTileState();
  }
}

class ExpansionTileState extends StatefulWidget {
  const ExpansionTileState({Key? key}) : super(key: key);

  @override
  _ExpansionTileStateState createState() => _ExpansionTileStateState();
}

class _ExpansionTileStateState extends State<ExpansionTileState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI / UX',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ExpansionTile(
        leading: const Icon(Icons.info),
        title: const Text('See more information'),
        children: [
          const ListTile(
            title: Text('first info'),
          ),
          const ListTile(
            title: Text('second info'),
          ),
          const ListTile(
            title: Text('third info'),
          ),
          ListTile(
              title: const Text('forth info - this is clickable'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: const Text('Clicked!'),
                          content: const Text('This is content of Alert!'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Yes'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('No'),
                            ),
                          ],
                        ));
              }),
        ],
      ),
    );
  }
}
