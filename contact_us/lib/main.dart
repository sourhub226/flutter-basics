import 'package:flutter/material.dart';

void main() {
  runApp(Contact());
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Contact Us",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                // column/row have children widgets
                children: [
                  Center(
                    //center has child for widgets
                    child: Image.asset(
                      "images/contact.jpg",
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "If you require assistance,\nfeel free to contact us!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height:
                        20, //this is used to give padding - sizedbox is an empty transparent box
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment
                        .center, //aligns everything in the row to center
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //container is like a <div> which also have child for widgets
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 30,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.orange,
                                size: 60,
                              ),
                              Text(
                                "Write to us on\nhelp@gmail.com",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //container is like a <div> which also have child for widgets
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 30,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.help,
                                color: Colors.orange,
                                size: 60,
                              ),
                              Text(
                                "FAQs\nFrequently Asked Questions",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, //aligns everything in the row to center
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //container is like a <div> which also have child for widgets
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 30,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.orange,
                                size: 60,
                              ),
                              Text(
                                "Give us a call on\n+91987654321",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          //container is like a <div> which also have child for widgets
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200],
                                blurRadius: 30,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                                size: 60,
                              ),
                              Text(
                                "Address\nGoa, India",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10))
                ],
              ),
            ),
          )),
    );
  }
}
