import 'package:flutter/material.dart';

class IntroPython extends StatelessWidget {
  const IntroPython({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(child: Text("S T E C")),
      ),
      body: ListView(children: [
        Image.asset('assets/thumbnail/Intro_to_python.jpg'),
        Container(
          child: Center(
            child: Title(
                color: Colors.black,
                child: Text(
                  "Introduction to Python",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Container(
          child: Text(
              "Welcome! Are you completely new to programming? If not then we presume you will be looking for information about why and how to get started with Python. Fortunately an experienced programmer in any programming language (whatever it may be) can pick up Python very quickly. It's also easy for beginners to use and learn, so jump in! \n"),
        ),
        Container(
          child: Center(
            child: Title(
                color: Colors.black,
                child: Text(
                  "Installing",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Container(
          child: Text(
              "Installing Python is generally easy, and nowadays many Linux and UNIX distributions include a recent Python. Even some Windows computers (notably those from HP) now come with Python already installed. If you do need to install Python and aren't confident about the task you can find a few notes on the BeginnersGuide/Download wiki page, but installation is unremarkable on most platforms. \n"),
        ),
        Container(
          child: Center(
            child: Title(
                color: Colors.black,
                child: Text(
                  "Learning",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Container(
          child: Text(
              "Before getting started, you may want to find out which IDEs and text editors are tailored to make Python editing easy, browse the list of introductory books, or look at code samples that you might find helpful. \n \n There is a list of tutorials suitable for experienced programmers on the BeginnersGuide/Tutorials page. There is also a list of resources in other languages which might be useful if English is not your first language. \n \n The online documentation is your first port of call for definitive information. There is a fairly brief tutorial that gives you basic information about the language and gets you started. You can follow this by looking at the library reference for a full description of Python's many libraries and the language reference for a complete (though somewhat dry) explanation of Python's syntax. If you are looking for common Python recipes and patterns, you can browse the ActiveState Python Cookbook \n \n"),
        ),

        Container(
          child: Center(
            child: Title(
                color: Colors.black,
                child: Text(
                  "Looking for Something Specific?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),

        Container(
          child: Text(
              "If you want to know whether a particular application, or a library with particular functionality, is available in Python there are a number of possible sources of information. The Python web site provides a Python Package Index (also known as the Cheese Shop, a reference to the Monty Python script of that name). There is also a search page for a number of sources of Python-related information. Failing that, just Google for a phrase including the word ''python'' and you may well get the result you need. If all else fails, ask on the python newsgroup and there's a good chance someone will put you on the right track. \n \n"),
        ),
      ]),
    );
  }
}
