import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:jobs_ui/screens/login.dart';
import 'package:jobs_ui/utlis/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Employee extends StatefulWidget {
  final zoomController;
  const Employee({Key? key, this.zoomController}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  final _advancedDrawerController = AdvancedDrawerController();
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
    return AdvancedDrawer(
      backdropColor: const Color(0xffA7ACD9),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _textList[_currentIndex],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: colorPrimaryText,
            ),
          ),
          // elevation: 0,
          backgroundColor: colorBackground,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Image.asset(
                    value.visible
                        ? "assets/images/close.png"
                        : "assets/images/hamburger.png",
                    width: 18,
                    height: 18,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
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
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 34.0,
                    bottom: 24.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff8693AB),
                        Color(0xffBDD4E7),
                      ],
                    ),
                    // color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/company.png',
                  ),
                ),
                const Text(
                  "Employee's Name",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: colorPrimaryText),
                ),
                const SizedBox(
                  height: 25,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.home),
                  title: const Text('Profile'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_circle_rounded),
                  title: const Text('Group'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.favorite),
                  title: const Text('Passbook'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Invite'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Help'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Feedback'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title: const Text('About Us'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
