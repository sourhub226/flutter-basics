import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multi File"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Instead of putting all code in the main function, this app code demonstrates how to split code into multiple dart files for a single app.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
