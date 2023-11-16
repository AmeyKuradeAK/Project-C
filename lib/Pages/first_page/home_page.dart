// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_c/Pages/first_page/components/main_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.language_outlined)],
        leading: Icon(Icons.menu),
        title: Center(
          child: Text("S.T.E.C"),
        ),
      ),
      body: ListView.builder(
          itemCount: _post.length,
          itemBuilder: (context, index) {
            return HomeList(child: _post[index]);
          }),
    );
  }
}
