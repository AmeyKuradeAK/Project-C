// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
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
                            ),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            )
          ]),
        ),
        
      ),
      body: 
      _pages[_selectedIndex],
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[300],
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          )
        ],
      ),
    );
  }
}
