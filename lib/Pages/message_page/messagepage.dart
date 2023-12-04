import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: InkWell(
          onTap: () => launchUrl(Uri.parse('https://github.com/AmeyKuradeAK/Project-C')),
          child: Text("Change Logs"),
        ),
      ),
    );
  }
}
