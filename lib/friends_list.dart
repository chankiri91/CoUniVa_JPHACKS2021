import 'package:flutter/material.dart';
import 'package:jphacks2021_a_2103/firebase_test.dart';

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1000,0,250,150),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Friends List',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirebaseTest()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("背徳感"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("kiri"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("hibiki"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("JPHACKS"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(1000,0,250,150),
            ),
            title: Text("ボブ"),
          ),
        ],
      ),
    );
  }
}
