import 'package:flutter/material.dart';
import 'package:project_c/Pages/Homepage/list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("App Bar"),),
      ),
      body: ListView1()
    );
  }
}
