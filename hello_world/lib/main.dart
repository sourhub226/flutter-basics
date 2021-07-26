import 'package:flutter/material.dart';

//The main method does not support hot reload
// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text("Hello World"),
//       ),
//     ),
//   );
// }

//This version supports hot reload due to presence of stateful/stateless widget
void main() {
  runApp(Hello());
}

//Scaffold example using stateless widget
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
