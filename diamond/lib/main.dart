import 'package:flutter/material.dart';

void main() {
  runApp(Diamond());
}

class Diamond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Diamond Advertisement"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(
                "images/diamond.png",
                height: 300,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[400],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromARGB(0xff, 0xab, 0xc0, 0xd9),
                  width: 5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.alternate_email,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Text(
                      "If you want to buy diamonds, email us on\nbuydiamonds247@gmail.com",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
