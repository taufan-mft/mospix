import 'package:flutter/material.dart';
import 'package:mospix/routes/schedules/index.dart';

import 'components/index.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const SchedulesView(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: 0, // this will be set when a new tab is tapped
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Schedules',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
        selectedItemColor: const Color(0xFFFA7100),
      ),
    );
  }
}
