import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:jobs_ui/controller/item_view.dart';
import 'package:jobs_ui/data/response.dart';
import 'package:jobs_ui/utlis/colors.dart';

class Employee extends StatefulWidget {
  final zoomController;
  const Employee({Key? key, this.zoomController}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

final PostPoneViewModel _postPoneVM = PostPoneViewModel();
List<PostPoneResponse>? postPoneItems;

class _EmployeeState extends State<Employee> {
  final _advancedDrawerController = AdvancedDrawerController();
  int counter = 0;

  @override
  void initState() {
    super.initState();
    postPoneItems = _postPoneVM.getPostPone();
  }

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    // My Work

    // const Text('Page One'),
    ListView.builder(
      itemCount: postPoneItems?.length,
      itemBuilder: (context, index) {
        var postPone = postPoneItems![index];
        return Card(
          color: Theme.of(context).cardColor,
          //RoundedRectangleBorder, BeveledRectangleBorder, StadiumBorder
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10.0), top: Radius.circular(2.0)),
          ),
          child: ItemView(
              postPone.refNo.toString(),
              postPone.codAmount.toString(),
              postPone.endCustomer,
              postPone.brand,
              postPone.contactNo,
              postPone.fullAddress,
              postPone.model,
              postPone.assignTime,
              postPone.postponedReason,
              postPone.description),
        );
      },
    ),

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
      backdropColor: const Color(0xffE7DDDC),
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
                  leading: Image.asset(
                    "assets/images/profile.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text('Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: colorSecondaryText)),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/group.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Group',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/passbook.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Passbook',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/invite.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Invite',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/help.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Help',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/feedback.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Feedback',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/settings.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/about.png",
                    width: 30,
                    height: 30,
                  ),
                  title: const Text(
                    'About Us',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: colorSecondaryText),
                  ),
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

class PostPoneViewModel {
  List<PostPoneResponse>? postPoneItems;
  PostPoneViewModel({this.postPoneItems});
  getPostPone() => <PostPoneResponse>[
        PostPoneResponse(
            description: 'Pickup',
            refNo: 123456.00,
            id: 1.00,
            lonerPhone: '1',
            assignTime: '20-02-2019 10:51PM',
            postponeTime: '24-02-2019 10:51PM',
            postponedReason: 'Outside',
            contactNo: '0000000000',
            endCustomer: 'Kamlesh',
            fullAddress: 'Address',
            brand: 'MI',
            model: 'A2',
            codAmount: 1200.00)
      ];
}
