import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.only(top: 490),
            child: Center(
              child: Text(
                "Made with Love \nIn India \nv0.4.9",
                textAlign: TextAlign.center,
              ),
            )));
  }
}
