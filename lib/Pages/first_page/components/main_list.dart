// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final String child;
  const HomeList({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.blue,
        child: Center(child: Text(child)),
      ),
    );
  }
}
