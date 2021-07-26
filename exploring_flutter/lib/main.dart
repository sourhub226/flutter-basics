//app using stateless widget class

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring flutter",
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.amber,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://picsum.photos/seed/picsum/100"),
                  ),
                  accountName: Text(
                    "John Doe",
                  ),
                  accountEmail: Text(
                    "johndoe@mail.com",
                  ),
                ),
              ),
              ExpansionTile(
                title: Text("Expansion Title"),
                children: <Widget>[Text("children 1"), Text("children 2")],
              ),
              ListTile(
                title: Text('My Files'),
                leading: Icon(Icons.folder),
                onTap: () {
                  print("Clicked");
                },
              ),
              ListTile(
                title: Text('Shared with me'),
                leading: Icon(Icons.people),
                onTap: () {
                  print("Clicked");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Exploring flutter widgets",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          actions: [
            PopupMenuButton(
              initialValue: "hello",
              itemBuilder: (BuildContext context) => <PopupMenuItem>[
                new PopupMenuItem(value: 1, child: new Text('Item One')),
                new PopupMenuItem(value: 2, child: new Text('Item Two')),
                new PopupMenuItem(value: 3, child: new Text('Item Three')),
                new PopupMenuItem(value: 4, child: new Text('I am Item Four'))
              ],
            )
          ],
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello World",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                ),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                ),
              ),
              Text(
                "Dart",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.camera,
          ),
          tooltip: "Open Camera",
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
