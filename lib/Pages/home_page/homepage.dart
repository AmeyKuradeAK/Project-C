// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:project_c/Pages/first_page/components/main_list.dart';

class mainHomePage extends StatelessWidget {
  mainHomePage({super.key});

  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index) {
          return HomeList(child: _post[index]);
        });
  }
}
