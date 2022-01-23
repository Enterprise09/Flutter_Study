import 'package:basic_flutter/widgets/index1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHome(
        title: 'hello Flutter!',
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _count = 0;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyIndex1(),
    Text('Index 0: Unit'),
    Text('Index 1: Alarm'),
    Text('Index 2: Time'),
    Text('Index 3: Balance'),
  ];

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _buttonClick() {
    showDialog(
        context: context,
        builder: (e) => const AlertDialog(
              title: Text('Clicked!!'),
              content: Text('Drawer Button Clicked!!'),
            ));
  }

  void _bottomNavItemsClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Welcome to Drawer menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('menu1'),
            onTap: _buttonClick,
          ),
          ListTile(
            title: const Text('menu2'),
            onTap: _buttonClick,
          ),
          ListTile(
            title: const Text('menu3'),
            onTap: _buttonClick,
          ),
        ],
      )),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline5,
            ),
            _widgetOptions.elementAt(_selectedIndex),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '카운팅!',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _bottomNavItemsClicked,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            title: Text('Unit'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            title: Text('Alarm'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_outlined),
            title: Text('Time'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            title: Text('Balance'),
          ),
        ],
      ),
    );
  }
}
