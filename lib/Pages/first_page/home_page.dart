// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_c/Pages/first_page/components/main_list.dart';
import 'package:project_c/Pages/home_page/homepage.dart';
import 'package:project_c/Pages/message_page/messagepage.dart';
import 'package:project_c/Pages/profile/profile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

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
            InkWell(
              onTap: () => launchUrl(Uri.parse(
                  'https://chat.whatsapp.com/K10ZWYFuuDt9FEyAhOy8PB')),
              child: ListTile(
                title: Text("WhatsApp"),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(
                    'assets/icon/whatsapp.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.facebook.com/profile.php?id=61554370644501')),
                title: Text("Facebook"),
                leading: Icon(Icons.facebook),
              ),
            ),
            InkWell(
              child: ListTile(
                  onTap: () => launchUrl(
                      Uri.parse('https://www.instagram.com/__s_a_g_e/')),
                  title: Text("Instagram"),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 1.5),
                    child: Image.asset(
                      'assets/icon/instagram.png',
                      height: 20,
                      width: 20,
                    ),
                  )),
            ),
            InkWell(
              child: ListTile(
                onTap: () => launchUrl(Uri.parse('https://www.google.co.in/')),
                title: Text("Telegram"),
                leading: Icon(Icons.telegram),
              ),
            ),
            InkWell(
              onTap: () => launchUrl(Uri.parse('https://www.google.co.in/')),
              child: ListTile(
                title: Text("Community Discussion"),
                leading: Image.asset(
                  'assets/icon/community.png',
                  height: 25,
                  width: 25,
                ),
              ),
            )
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
