import 'package:flutter/material.dart';
import 'package:ui_study/screen/screen_choice_chip.dart';
import 'package:ui_study/screen/screen_stapper.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHome();
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                padding: const EdgeInsets.only(top: 25),
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'Drawer Head',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          Text('Flutter Widget Example for me'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'Stepper',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyStepperScreen();
                  }));
                },
              ),
              ListTile(
                title: const Text(
                  'Choice Chip',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ChoiceChipScreen();
                  }));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'UI / UX',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          // leading: IconButton(
          //   icon: const Icon(Icons.menu),
          //   onPressed: () {},
          // ),
        ),
        body: const Center(
          child: Text(
            'Hello Screen!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
