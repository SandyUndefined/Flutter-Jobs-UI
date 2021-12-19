import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobs_ui/screens/login.dart';
import 'package:jobs_ui/utlis/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    const Text("data"),
    const Text('Page Two'),
    const Text('Page Three'),
    const Text('Page Four'),
  ];

  final List<String> _textList = [
    "My Work",
    "Request Made",
    "Offers Received",
    "Search Work",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          _textList[_currentIndex],
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimaryText),
        ),
        // elevation: 0,
        backgroundColor: colorBackground,
        leading: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Image.asset("assets/images/hamburger.png"),
          ),
        ),
      ),
      backgroundColor: colorBackground,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: const TextStyle(
            color: colorPrimaryText, fontWeight: FontWeight.w500),
        selectedLabelStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        fixedColor: Colors.blueAccent[100],
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/work.png",
                width: 20,
                height: 20,
              ),
              label: 'My Work'),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/request.png",
                  width: 20, height: 20),
              label: 'Request Made'),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/offers.png",
                width: 20,
                height: 20,
              ),
              label: 'Offers Received'),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/search.png",
                width: 20,
                height: 20,
              ),
              label: 'Search Work'),
        ],
      ),
      body: Center(child: _widgetList[_currentIndex]),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
