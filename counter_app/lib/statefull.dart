import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var title = "Counter App";
  var count = 0;
  var status = "You clicked me 0 times";

  void changeStatus() {
    setState(() {
      count++;
      status = "You clicked me $count times";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors for light theme.
        primaryColor: Colors.red[400],
      ),
      darkTheme:
          ThemeData(primaryColor: Colors.red[400], brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                status,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red[400]),
                onPressed: changeStatus,
                child: Text(
                  "Click Me",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
