// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:project_c/Pages/first_page/components/main_list.dart';
import 'package:project_c/Pages/home_page/Intro_to_flutter/flutter_intro.dart';
import 'package:project_c/Pages/home_page/Intro_to_python/intropy.dart';

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
    return ListView(
      children: [
        //1st Post
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(

              //Giving the Curve the Posts
              height: 300,
              color: Colors.blue,
              child: ListView(
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/thumbnail/Intro_to_flutter.png",
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Introduction to Flutter",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => FlutterIntro())));
                      },
                      child: Text("Click"),
                    ),
                  )
                ],
              )),
        ),

        //2nd Post
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 300,
              color: Colors.blue,
              child: ListView(
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/thumbnail/Intro_to_python.jpg",
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Introduction to Python",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => IntroPython())));
                      },
                      child: Text("Click"),
                    ),
                  )
                ],
              )),
        ),

        //3rd Post
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 300,
              color: Colors.blue,
              child: ListView(
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/thumbnail/Intro_to_rust.png",
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Introduction to rust",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => FlutterIntro())));
                      },
                      child: Text("Click"),
                    ),
                  )
                ],
              )),
        ),

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 300,
              color: Colors.blue,
              child: ListView(
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/thumbnail/Intro_to_Ruby.jpg",
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Introduction to Ruby",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => FlutterIntro())));
                      },
                      child: Text("Click"),
                    ),
                  )
                ],
              )),
        ),

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              height: 300,
              color: Colors.blue,
              child: ListView(
                primary: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/thumbnail/Intro_to_java.png",
                      height: 200,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Introduction to java",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => FlutterIntro())));
                      },
                      child: Text("Click"),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
