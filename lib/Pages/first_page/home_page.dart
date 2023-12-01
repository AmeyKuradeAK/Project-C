// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_c/Pages/first_page/components/main_list.dart';
import 'package:project_c/Pages/home_page/homepage.dart';
import 'package:project_c/Pages/message_page/messagepage.dart';
import 'package:project_c/Pages/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    mainHomePage(),
    MessagePage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        actions: [Icon(Icons.login)],
        title: Center(
          child: Text("S.T.E.C"),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(children: [
            DrawerHeader(
                child: Center(
                    child: Text(
              "S T E C",
              style: TextStyle(fontSize: 35),
            ))),
            ListTile(
              title: Text("WhatsApp"),
              leading: Icon(Icons.group),
            ),
            ListTile(
              title: Text("Facebook"),
              leading: Icon(Icons.facebook),
            ),
            ListTile(
              title: Text("Instagram"),
              leading: Icon(Icons.mark_chat_unread_sharp),
            ),
            ListTile(
              title: Text("Telegram"),
              leading: Icon(Icons.telegram),
            ),
            ListTile(
                title: Text("Community Discussion"),
                leading: Icon(Icons.group)),
          ]),
        ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
          child: GNav(
              backgroundColor: Colors.deepPurple,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.deepPurple.shade800,
              gap: 8,
              onTabChange: _navigateBottomBar,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Message',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                )
              ]),
        ),
      ),
    );
  }
}
