import 'package:assignment5/main.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('SETTINGS'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    ),
    body: Center(

      child: ElevatedButton(
        child: Text("GO TO FIRST PAGE", style: TextStyle(fontSize: 20)),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => myApp()),
        ),

      ),
    ),
  );
}