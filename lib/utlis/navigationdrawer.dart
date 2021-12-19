import 'package:flutter/material.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(icon: Icons.home, text: 'Home'),
          createDrawerBodyItem(icon: Icons.account_circle, text: 'Profile'),
          createDrawerBodyItem(icon: Icons.event_note, text: 'Events'),
          Divider(),
          createDrawerBodyItem(
              icon: Icons.notifications_active, text: 'Notifications'),
          createDrawerBodyItem(icon: Icons.contact_phone, text: 'Contact Info'),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
