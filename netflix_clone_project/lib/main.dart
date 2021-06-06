import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_project/screen/home_screen.dart';
import 'package:netflix_clone_project/screen/more_screen.dart';
import 'package:netflix_clone_project/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('Search'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
