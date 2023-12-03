import 'package:flutter/material.dart';

class FlutterIntro extends StatelessWidget {
  const FlutterIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(child: Text("S T E C")),
        ),
        body: ListView(
          children: [
            Container(
              child: Image.asset(
                'assets/thumbnail/intro_to_flutter.png',
                height: 200,
              ),
            ),
            Container(
              child: Title(
                  color: Colors.black,
                  child: Center(
                      child: Text(
                    "Introduction to Flutter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))),
            ),
            Container(
              child: Text(
                "I’ve been hearing about how amazing Flutter is and I’ve decided to try it out to learn something new. I wished to have more topics to discuss with colleagues. \n",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              child: Text(
                "It started by watching, then reading, and then I started coding. It was a good experience. Apps were running, and everything that was written wasn’t hard to understand. \n",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              child: Text(
                "I decided that reading the documentation on Dart, Flutter and all of its widgets wouldn’t be a good idea as it would be too time consuming. Also, I didn’t have a lot of time as the purpose was to get to know the new thing, and not to become an expert in the field. I thought at that moment that it would be amazing if there was a short guide on Flutter, that would describe all the necessary concepts to understand the framework and be able to write simple apps, but no more! \n",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              child: Text(
                "I’ve been hearing about how amazing Flutter is and I’ve decided to try it out to learn something new. I wished to have more topics to discuss with colleagues. \n",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ));
  }
}
